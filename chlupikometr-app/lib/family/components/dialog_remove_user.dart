import 'package:flutter/material.dart';

class DialogRemoveUser extends StatelessWidget {
  const DialogRemoveUser(this.name, {Key? key}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Vyhození člena'),
      content: Text('Opravdu chcete vyhodit člena ${name}?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(0),
          child: const Text('Zrušit'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(1),
          child: Text(
            'Vyhodit',
            style: Theme.of(context).textTheme.button?.copyWith(
              color: Theme.of(context).errorColor,
            ),
          ),
        ),
      ],
    );
  }
}
