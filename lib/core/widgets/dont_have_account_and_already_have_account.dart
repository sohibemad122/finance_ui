import 'package:finance_ui/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class DontHaveAccountAndAlreadyHaveAccount extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onPressed;

  const DontHaveAccountAndAlreadyHaveAccount({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Text(firstText, style: TextStyles.font15GmainAppColormedium),
          Text(secondText, style: TextStyles.font15DarkBlueBold),
        ],
      ),
    );
  }
}
