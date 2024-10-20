import 'package:flutter/material.dart';

class MissingInternetConnection extends StatelessWidget {
  const MissingInternetConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Missing internet connection'),
        ),
      ),
    );
  }
}
