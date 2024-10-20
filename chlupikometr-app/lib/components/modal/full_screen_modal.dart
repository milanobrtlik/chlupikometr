import 'package:flutter/material.dart';

class FullScreenModal extends StatelessWidget {
  const FullScreenModal({Key? key, this.title, this.body, required this.positiveTitle}) : super(key: key);

  final String positiveTitle;
  final Widget? title;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
        title: title,
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop('data'),
            child: Text(positiveTitle),
          ),
        ],
      ),
      body: body,
    );
  }
}
