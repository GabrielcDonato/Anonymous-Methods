import 'package:anonymous_methods/features/user/pages/login_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      //Login:
      case '/Login':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );

      //
    }
  }
}
