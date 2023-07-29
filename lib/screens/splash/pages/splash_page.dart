import 'package:exam_example/core/constants/constants.dart';
import 'package:exam_example/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isLog = false;
  Future<bool> isLoggedIn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isLog = pref.getBool("isLoggedIn") ?? false;
    return pref.getBool("isLoggedIn") ?? false;
  }

  @override
  void initState() {
    super.initState();
    isLoggedIn();
    Future.delayed(
      const Duration(seconds: 3),
    ).then(
      (value) {
        isLog
            ? Navigator.pushReplacementNamed(context, RouteName.bottomNav)
            : Navigator.pushReplacementNamed(context, RouteName.login);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_FC6828,
      body: Padding(
        padding: const EdgeInsets.all(120),
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
