import 'package:flutter/material.dart';

class NumericStepButton extends StatelessWidget {
  const NumericStepButton({
    required this.value,
    required this.onChanged,
    this.suffix,
    Key? key,
  }) : super(key: key);

  final String? suffix;
  final ValueChanged<int> onChanged;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const CircleBorder(),
          ),
          child: Icon(
            Icons.remove,
            color: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () => onChanged(value - 1),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            '${value > 0 ? '+' : ''}$value${suffix ?? ''}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black87,
              // fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(shape: const CircleBorder()),
            child: Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onPressed: () => onChanged(value + 1),
          ),
        ),
      ],
    );
  }
}
