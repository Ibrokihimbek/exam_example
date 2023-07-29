import 'package:exam_example/core/constants/constants.dart';
import 'package:exam_example/core/widgets/styles.dart';
import 'package:flutter/material.dart';

class LoginTitleWidget extends StatelessWidget {
  const LoginTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.C_FC6828,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Text(
          'E',
          style: AppStyle.fontLeagueSpartanW600(appcolor: AppColors.white)
              .copyWith(fontSize: 38),
        ),
      ),
    );
  }
}
