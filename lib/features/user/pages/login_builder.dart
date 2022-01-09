import 'package:anonymous_methods/core/errors/error_center.dart';
import 'package:anonymous_methods/features/user/controller/login_controller.dart';
import 'package:anonymous_methods/features/user/pages/login_loading.dart';
import 'package:anonymous_methods/features/user/pages/login_page.dart';
import 'package:flutter/material.dart';

class LoginBuilder extends StatelessWidget {
  const LoginBuilder({Key? key, required this.controller}) : super(key: key);
  final LoginController controller;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        if (controller.isLoading) {
          return LoginLoading();
        }

        if (controller.hasError) {
          return ErrorPage(
            failure: controller.error!,
            onRetry: () => controller.doLogin(),
          );
        }

        return LoginPage(
          onLogin: () => controller.doLogin(),
        );
      },
    );
  }
}
