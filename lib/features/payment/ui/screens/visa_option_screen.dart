import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/helper/spacing.dart';
import 'package:payment/core/theming/styles.dart';
import 'package:payment/core/widgets/top_app_bar.dart';
import 'package:payment/features/payment/ui/widgets/visa_option_screen/custom_credit_card.dart';

class VisaOptionScreen extends StatelessWidget {
  const VisaOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopAppBar(title: 'Visa Payment'),
              verticalSpacing(20),
              Text(
                'You need to enter your visa card details.',
                style: TextStylesManager.font16MediumGrayRegular,
              ),
              verticalSpacing(5),
              Expanded(
                child: CustomCreditCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
