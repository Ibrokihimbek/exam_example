import 'package:exam_example/core/constants/constants.dart';
import 'package:exam_example/core/widgets/styles.dart';
import 'package:flutter/material.dart';

class NotAccountTextWidget extends StatelessWidget {
  const NotAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don’t have an account?',
        style: AppStyle.fontLeagueSpartanW500(appcolor: AppColors.C_A8AFB9)
            .copyWith(fontSize: 14),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign Up',
            style: AppStyle.fontLeagueSpartanW500(appcolor: AppColors.C_FC6828)
                .copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
