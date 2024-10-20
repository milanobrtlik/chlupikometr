import 'package:flutter/material.dart';

import '../../../home_page/graphql/homepage.graphql.dart';

class PickFamily extends StatelessWidget {
  const PickFamily({required this.families, Key? key}) : super(key: key);

  final List<Query$families$families> families;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Výběr rodiny'),
      children: [
        for(var i = 0; i < families.length; i++) ... [
          SimpleDialogOption(
            onPressed: () => Navigator.of(context).pop(families[i].id),
            child: Text(families[i].name),
          ),
        ],
      ],
    );
  }
}
