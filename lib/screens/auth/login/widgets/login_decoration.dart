import 'package:exam_example/core/constants/constants.dart';
import 'package:exam_example/core/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTextfieldDecoration {
  static InputDecoration decoration({
    required String hintText,
    required String prefixIcon,
  }) {
    return InputDecoration(
      prefixIcon: Padding(
        padding: const EdgeInsets.all(8),
        child: SvgPicture.asset(prefixIcon),
      ),
      hintText: hintText,
      hintStyle: AppStyle.fontLeagueSpartanW600(appcolor: AppColors.C_A8AFB9)
          .copyWith(fontSize: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
