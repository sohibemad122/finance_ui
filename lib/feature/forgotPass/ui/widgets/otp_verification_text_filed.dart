import 'package:finance_ui/core/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';

class OtpVerificationTextFiled extends StatelessWidget {
  const OtpVerificationTextFiled({super.key, this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OtpTextField(),
        OtpTextField(),
        OtpTextField(),
        OtpTextField(),
      ],
    );
  }
}
