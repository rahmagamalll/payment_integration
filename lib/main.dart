import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/di/dependency_injection.dart';
import 'package:payment/payment_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(const PaymentApp());
}

// payment intent
// Integrate the payment sheet
