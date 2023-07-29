import 'package:exam_example/core/constants/constants.dart';
import 'package:flutter/material.dart';

class PlatformButtonWidget extends StatelessWidget {
  const PlatformButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.C_3B5999,
          child: Icon(
            Icons.facebook,
            color: AppColors.white,
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.024),
        const CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.C_FC3637,
          child: Icon(
            Icons.android,
            color: AppColors.white,
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.024),
        const CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.black,
          child: Icon(
            Icons.apple,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
