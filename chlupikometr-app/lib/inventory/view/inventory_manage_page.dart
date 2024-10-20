import 'package:chlupikometr_lite/inventory/bloc/inventory_manage_bloc.dart';
import 'package:chlupikometr_lite/inventory/formz/inventory/inventory.dart';
import 'package:chlupikometr_lite/inventory/view/inventory_manage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';

import '../../home_page/graphql/homepage.graphql.dart';

class InventoryManagePage extends StatelessWidget {
  const InventoryManagePage(this.inventory, {Key? key}) : super(key: key);

  final Query$homepage$inventoryList? inventory;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InventoryManageBloc(
        context.read<GraphQLClient>(),
        InventoryManageState(
          title: inventory == null
              ? const InventoryTitle.pure()
              : InventoryTitle.pure(inventory!.title),
          description: inventory == null
            ? const InventoryDescription.pure()
              : InventoryDescription.pure(inventory!.),
        ),
      ),
      child: InventoryManageView(inventory),
    );
  }
}
