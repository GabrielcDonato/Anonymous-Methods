import 'package:anonymous_methods/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key, required this.failure, required this.onRetry}) : super(key: key);

  final Failure failure;
  final Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(failure.message!),
      ),
      bottomNavigationBar: TextButton(
        onPressed: onRetry,
        child: Text('Tente novamente'),
      ),
    );
  }
}

Future<void> errorDialog(String message, BuildContext context, Function() onClose) async {
  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: onClose,
            child: Text('Ok'),
          )
        ],
      );
    },
  );
}
