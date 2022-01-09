import 'package:anonymous_methods/core/errors/error_center.dart';
import 'package:anonymous_methods/features/user/controller/login_controller.dart';
import 'package:anonymous_methods/features/user/pages/login_builder.dart';
import 'package:anonymous_methods/features/user/repository/user_repository.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      //Login:
      case '/Login':
        return MaterialPageRoute(
          builder: (context) => LoginBuilder(
            controller: LoginController(
              UserRepository(),
              (message) => errorDialog(
                message,
                context,
                () => Navigator.of(context).pop(),
              ),
            ),
          ),
        );

      //
    }
  }
}
