import 'package:camera/camera.dart';
import 'package:chlupikometr_lite/guard/bloc/guard_bloc.dart';
import 'package:chlupikometr_lite/guard/view/retry_sign_in_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'guard/view/splash_page.dart';
import 'home_page/view/home_page_page.dart';

List<CameraDescription> cameras = [];

void main() async {
  late String url;
  if (kReleaseMode) {
    url = 'https://chlupikometr.obrtlik.cz/graphql';
  } else {
    // url = http://192.168.0.38:5249/graphql';
    url = 'http://10.0.2.2:5249/graphql';
    // url = 'https://chlupikometr.obrtlik.cz/graphql';
  }
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await Hive.initFlutter();
  await Hive.openBox('jwt');
  await Hive.openBox('family');
  // await Hive.box('family').clear();
  final guard = GuardBloc(url: url);
  final httpLink = HttpLink(
    url,
    serializer: CustomRequestSerializer(),
    parser: CustomErrorParser(guard),
  );
  final authLink = AuthLink(getToken: guard.getShortLivedToken);
  final graphqlClient = GraphQLClient(
    link: authLink.concat(httpLink),
    cache: GraphQLCache(),
  );

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://f1f5a5f2f5dc476aabd0b3a3168bd002@o1414682.ingest.sentry.io/6754987';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(MultiRepositoryProvider(providers: [
      RepositoryProvider(create: (_) => guard..add(OnGuardStartEvent())),
      RepositoryProvider(create: (_) => graphqlClient),
    ], child: MyApp(guard: guard))),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.guard}) : super(key: key);

  final GuardBloc guard;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chlupíkometr',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: BlocBuilder<GuardBloc, GuardState>(
        builder: (ctx, state) {
          if (state is GuardUnauthenticated) return const SplashPage();
          if (state is GuardAuthenticated) return const HomePagePage();

          return const RetrySignInPage();
        },
      ),
    );
  }
}

class CustomRequestSerializer extends RequestSerializer {
  @override
  Map<String, dynamic> serializeRequest(Request request) {
    return super.serializeRequest(request);
  }
}

class CustomErrorParser extends ResponseParser {
  CustomErrorParser(this._guardBloc);

  final GuardBloc _guardBloc;

  @override
  GraphQLError parseError(Map<String, dynamic> error) {
    if (error.containsKey('extensions') &&
        error['extensions'].containsKey('code')) {
      if (error['extensions']['code'] == 'AUTH_NOT_AUTHENTICATED') {
        _guardBloc.add(OnGuardStartEvent());
      }
      if (error['extensions']['code'] == 'AUTH_NOT_AUTHORIZED') {
        Hive.box('family').clear();
        _guardBloc.add(OnGuardStartEvent());
      }
    }
    return super.parseError(error);
  }

  @override
  Response parseResponse(Map<String, dynamic> body) {
    if (body.containsValue('UNAUTHENTICATED')) {
      _guardBloc.add(OnGuardForceLogoutEvent());
    }
    return super.parseResponse(body);
  }
}
