import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/routing/app_router.dart';
import 'package:payment/core/routing/routes.dart';
import 'package:payment/core/theming/colors.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsManager.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 170, 47, 47),
          ),
          textSelectionTheme: const TextSelectionThemeData(
            selectionHandleColor: ColorsManager.primaryColor,
          ),
        ),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.myCartScreen,
      ),
    );
  }
}
