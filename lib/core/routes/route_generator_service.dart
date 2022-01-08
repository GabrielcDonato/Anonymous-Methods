import 'package:anonymous_methods/modules/home/presentation/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      //Home
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );

      //oi
    }
  }
}
