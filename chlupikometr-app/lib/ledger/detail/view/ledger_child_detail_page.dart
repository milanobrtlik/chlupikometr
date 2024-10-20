import 'package:chlupikometr_lite/ledger/detail/bloc/ledger_child_detail_bloc.dart';
import 'package:chlupikometr_lite/ledger/detail/view/ledger_child_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

import '../../../home_page/graphql/homepage.graphql.dart';

class LedgerChildDetailPage extends StatelessWidget {
  const LedgerChildDetailPage({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Query$homepage$children child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LedgerChildDetailBloc(
        client: context.read<GraphQLClient>(),
      )..add(OnLedgerChildDetailEntered(child)),
      child: const LedgerChildDetailView(),
    );
  }
}
