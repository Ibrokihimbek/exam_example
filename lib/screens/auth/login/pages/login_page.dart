import 'package:exam_example/core/constants/constants.dart';
import 'package:exam_example/core/widgets/global_button.dart';
import 'package:exam_example/core/widgets/styles.dart';
import 'package:exam_example/routes/app_routes.dart';
import 'package:exam_example/screens/auth/login/widgets/login_decoration.dart';
import 'package:exam_example/screens/auth/login/widgets/login_title_widget.dart';
import 'package:exam_example/screens/auth/login/widgets/login_with_platform.dart';
import 'package:exam_example/screens/auth/login/widgets/not_account_text.dart';
import 'package:exam_example/screens/auth/login/widgets/platform_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 36,
              horizontal: 24,
            ),
            child: Column(
              children: [
                const LoginTitleWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                Text(
                  'Login to e-Shop',
                  style:
                      AppStyle.fontLeagueSpartanW600(appcolor: AppColors.black)
                          .copyWith(fontSize: 20),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.044),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter valid name";
                    }
                  },
                  controller: nameController,
                  decoration: LoginTextfieldDecoration.decoration(
                    hintText: 'Username',
                    prefixIcon: AppIcons.user,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter valid password";
                    }
                  },
                  controller: passwordController,
                  decoration: LoginTextfieldDecoration.decoration(
                    hintText: 'Password',
                    prefixIcon: AppIcons.lock,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                Text(
                  'Forgot Password?',
                  style:
                      AppStyle.fontLeagueSpartanW500(appcolor: AppColors.black)
                          .copyWith(fontSize: 14),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                GlobalButton(
                  buttonName: 'Login',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      saveLogin(context);
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                const LoginWithPlatformWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                const PlatformButtonWidget(),
                const Spacer(),
                const NotAccountTextWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveLogin(context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isLoggedIn", true);

    Navigator.pushNamedAndRemoveUntil(
        context, RouteName.bottomNav, (route) => false);
  }
}
