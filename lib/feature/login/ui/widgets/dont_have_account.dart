import 'package:finance_ui/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Row(
        children: [
          Text(
            "Don't have an account? ",
            style: TextStyles.font15GmainAppColormedium,
          ),
          Text("Register Now", style: TextStyles.font15DarkBlueBold),
        ],
      ),
    );
  }
}
