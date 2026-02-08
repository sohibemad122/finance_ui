import 'package:finance_ui/core/routing/app_router.dart';
import 'package:finance_ui/finance_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(FinanceApp(appRouter: AppRouter()));
}
