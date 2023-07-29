import 'package:exam_example/routes/app_routes.dart';
import 'package:exam_example/screens/auth/login/pages/login_page.dart';
import 'package:exam_example/screens/main/pages/main_page.dart';
import 'package:exam_example/screens/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // final args = settings.arguments as Map<String, dynamic>;
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case RouteName.bottomNav:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case RouteName.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
