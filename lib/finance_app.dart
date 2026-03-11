import 'package:finance_ui/core/routing/app_router.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinanceApp extends StatelessWidget {
  final AppRouter appRouter;
  const FinanceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final initialRoute = user != null ? Routes.homePage : Routes.loginPage;

    return ScreenUtilInit(
      designSize: const Size(375, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Finance App',
          initialRoute: initialRoute,
          onGenerateRoute: appRouter.generateRoute,
          builder: (context, child) {
            SystemChrome.setSystemUIOverlayStyle(
              const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
                systemNavigationBarColor: Colors.white,
                systemNavigationBarIconBrightness: Brightness.dark,
              ),
            );
            return child!;
          },
        );
      },
    );
  }
}
