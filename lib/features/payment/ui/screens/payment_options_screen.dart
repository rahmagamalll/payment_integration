import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/helper/spacing.dart';
import 'package:payment/core/theming/styles.dart';
import 'package:payment/core/widgets/top_app_bar.dart';
import 'package:payment/features/payment/ui/widgets/payment_options_screen/options_list.dart';

class PaymentOptionsScreen extends StatelessWidget {
  const PaymentOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopAppBar(title: 'Payment Methods'),
              verticalSpacing(20),
              Text(
                'You need to Select a payment method.',
                style: TextStylesManager.font16MediumGrayRegular,
              ),
              verticalSpacing(30),
              const Expanded(
                child: OptionsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
