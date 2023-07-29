import 'package:exam_example/core/constants/constants.dart';
import 'package:exam_example/core/widgets/styles.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  const GlobalButton({
    super.key,
    required this.buttonName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        elevation: const MaterialStatePropertyAll(0),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.C_A8AFB9;
          } else {
            return AppColors.white;
          }
        }),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppStyle.fontLeagueSpartanW600(appcolor: AppColors.white);
          } else {
            return AppStyle.fontLeagueSpartanW600(appcolor: AppColors.white);
          }
        }),
        surfaceTintColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.C_A8AFB9;
          } else {
            return AppColors.C_FC6828;
          }
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.C_A8AFB9;
          } else {
            return AppColors.C_FC6828;
          }
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        maximumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, 48),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, 48),
        ),
      ),
      onPressed: onTap,
      child: Text(buttonName),
    );
  }
}
