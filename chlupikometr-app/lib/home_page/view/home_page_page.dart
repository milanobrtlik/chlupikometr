import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:chlupikometr_lite/home_page/view/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

class HomePagePage extends StatelessWidget {
  const HomePagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomepageBloc(client: context.read<GraphQLClient>())
      ..add(OnHomepageEntered()),
      child: const HomePageView(),
    );
  }
}
