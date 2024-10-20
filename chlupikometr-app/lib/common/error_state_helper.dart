import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

abstract class ErrorStateHelper {
  ErrorStateHelper(this.operationException);

  final OperationException operationException;

  @override
  String toString() {
    String result = '';
    for (var e in operationException.graphqlErrors) {
      result += '${e.message}\n';
    }
    if (operationException.linkException != null) {
      result += operationException.linkException.toString();
    }

    return result;
  }
}

class StateError extends StatelessWidget {
  const StateError(this.state, {Key? key}) : super(key: key);

  final ErrorStateHelper state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var message in state.toString().split('\n')) ...[
          Text(message),
        ],
      ],
    );
  }
}

class UserError {
  UserError({required this.code, this.message});

  final String code;
  final String? message;
}
