import 'package:chlupikometr_lite/components/ledger_insert_modal/view/ledger_insert_widget.dart';
import 'package:chlupikometr_lite/home_page/bloc/homepage_bloc.dart';
import 'package:chlupikometr_lite/inventory/view/inventory_manage_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home_page/graphql/homepage.graphql.dart';

class InventoryListItem extends StatelessWidget {
  const InventoryListItem({required this.item, Key? key}) : super(key: key);

  final Query$homepage$inventoryList item;

  @override
  Widget build(BuildContext context) {
    final homepageBloc = BlocProvider.of<HomepageBloc>(context);
    return ListTile(
      title: Text(item.title),
      onLongPress: () => showDialog(
        context: context,
        builder: (_) => SimpleDialog(
          title: Text(item.title),
          children: [
            _SimpleDialogItem(
              text: 'Update',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => InventoryManagePage(null)),
                );
              },
              icon: Icons.edit_outlined,
            ),
            _SimpleDialogItem(
              text: 'Reorder',
              onPressed: () {},
              icon: Icons.reorder,
            ),
            const Divider(),
            _SimpleDialogItem(
              text: 'Delete',
              onPressed: () {},
              icon: Icons.delete_forever_outlined,
            ),
          ],
        ),
      ),
      onTap: () => showDialog(
        context: context,
        builder: (_) => BlocProvider.value(
          value: homepageBloc,
          child: LedgerInsertWidget(inventoryId: item.id),
        ),
      ),
    );
  }
}

class _SimpleDialogItem extends StatelessWidget {
  const _SimpleDialogItem({
    Key? key,
    required this.icon,
    this.color = Colors.grey,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 36.0,
            color: color,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
