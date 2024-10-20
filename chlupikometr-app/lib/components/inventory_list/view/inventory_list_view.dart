import 'package:chlupikometr_lite/components/inventory_list/view/inventory_list_item.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home_page/graphql/homepage.graphql.dart';
import '../../../inventory/view/inventory_manage_page.dart';

class InventoryListView extends StatelessWidget {
  const InventoryListView({
    required this.inventories,
    Key? key,
  }) : super(key: key);

  final List<Query$homepage$inventoryList> inventories;

  @override
  Widget build(BuildContext context) {
    final enhancedItems = List<dynamic>.empty(growable: true);
    enhancedItems.add(
      ListTile(
        onTap: () => Navigator.of(context)
            .push(
              MaterialPageRoute(
                builder: (context) => const InventoryManagePage(null),
              ),
            )
            .then((_) => context.read<HomepageBloc>().add(OnHomepageEntered())),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_outlined,
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
          ],
        ),
      ),
    );
    for (var inventory in inventories) {
      enhancedItems.add(inventory);
    }

    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, i) => enhancedItems[i] is Query$homepage$inventoryList
          ? InventoryListItem(item: enhancedItems[i])
          : enhancedItems[i],
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemCount: enhancedItems.length,
    );
  }
}
