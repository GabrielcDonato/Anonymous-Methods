import 'package:anonymous_methods/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ErrorCenter {
  Future<void> whenLoginFailure(LoginFailure failure, BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok'),
                )
              ],
            ));
  }
}
