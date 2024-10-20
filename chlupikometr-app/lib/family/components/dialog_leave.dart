import 'package:flutter/material.dart';

class DialogLeave extends StatelessWidget {
  const DialogLeave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Opuštění rodiny'),
      content: const Text('Opravdu chcete opustit rodinu?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(0),
          child: const Text('Zrušit'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(1),
          child: Text(
            'Opustit',
            style: Theme.of(context).textTheme.button?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ],
    );
  }
}
