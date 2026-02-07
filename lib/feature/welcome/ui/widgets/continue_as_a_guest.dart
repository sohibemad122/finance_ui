import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';

class ContinueAsAGuest extends StatelessWidget {
  const ContinueAsAGuest({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Continue as a guest",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeightHelper.bold,
            color: AppColors.darkBlue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
