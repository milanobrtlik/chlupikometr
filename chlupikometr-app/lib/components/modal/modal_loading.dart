import 'package:flutter/material.dart';

class ModalLoading extends StatelessWidget {
  const ModalLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SimpleDialogOption(),
        SimpleDialogOption(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
            ],
          ),
        ),
        const SimpleDialogOption(),
      ],
    );
  }
}
