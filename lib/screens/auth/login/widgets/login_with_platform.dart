import 'package:exam_example/core/constants/constants.dart';
import 'package:exam_example/core/widgets/styles.dart';
import 'package:flutter/material.dart';

class LoginWithPlatformWidget extends StatelessWidget {
  const LoginWithPlatformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.C_A8AFB9,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Or',
            style: AppStyle.fontLeagueSpartanW300(appcolor: AppColors.C_A8AFB9)
                .copyWith(fontSize: 14),
          ),
        ),
        const Expanded(
          child: Divider(
            color: AppColors.C_A8AFB9,
          ),
        ),
      ],
    );
  }
}
