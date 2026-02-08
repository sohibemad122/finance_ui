import 'package:finance_ui/core/routing/app_router.dart';
import 'package:finance_ui/finance_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(FinanceApp(appRouter: AppRouter()));
}
