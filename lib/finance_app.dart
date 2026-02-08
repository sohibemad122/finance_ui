import 'package:finance_ui/core/routing/app_router.dart';
import 'package:finance_ui/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinanceApp extends StatelessWidget {
  final AppRouter appRouter;
  const FinanceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Finance App',
          initialRoute: Routes.welcomePage,
          onGenerateRoute: appRouter.generateRoute,

          builder: (context, child) {
            SystemChrome.setSystemUIOverlayStyle(
              const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,

                systemNavigationBarColor: Colors.white,
                systemNavigationBarIconBrightness: Brightness.dark,
                systemNavigationBarContrastEnforced: true,
              ),
            );

            return child!;
          },
        );
      },
    );
  }
}
