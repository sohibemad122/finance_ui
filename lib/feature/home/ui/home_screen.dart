import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/feature/home/widgets/topbar_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(child: Column(children: [const TopbarHome()])),
    );
  }
}
