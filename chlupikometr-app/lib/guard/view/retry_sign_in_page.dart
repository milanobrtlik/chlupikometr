import 'package:chlupikometr_lite/guard/bloc/guard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RetrySignInPage extends StatelessWidget {
  const RetrySignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Neco sa pokazilo'),
              ElevatedButton(
                onPressed: () => context.read<GuardBloc>().add(OnGuardStartEvent()),
                child: const Text('Zkusit znovu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
