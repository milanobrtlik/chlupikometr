import 'package:chlupikometr_lite/components/ledger_insert_modal/view/ledger_insert_view.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

import '../bloc/ledger_insert_bloc.dart';

class LedgerInsertWidget extends StatelessWidget {
  const LedgerInsertWidget({Key? key, required this.inventoryId})
      : super(key: key);

  final int inventoryId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LedgerInsertBloc(
        client: context.read<GraphQLClient>(),
        homepageBloc: context.read<HomepageBloc>(),
      )..add(LedgerInsertLoadContent(inventoryId)),
      child: const LedgerInsertView(),
    );
  }
}
