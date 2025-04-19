import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/helper/extensions.dart';
import 'package:payment/core/helper/spacing.dart';
import 'package:payment/core/routing/routes.dart';
import 'package:payment/core/theming/colors.dart';
import 'package:payment/core/widgets/custom_elevation_button.dart';
import 'package:payment/core/widgets/top_app_bar.dart';
import 'package:payment/features/payment/ui/widgets/my_cart_screen/product_detail.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        child: Column(
          children: [
            const TopAppBar(title: 'My Cart'),
            verticalSpacing(16),
            const ProductDetails(),
            const Spacer(),
            CustomElevationButton(
              onPressed: () {
                context.pushNamed(Routes.paymentOptionsScreen);
              },
              title: "Pay Now",
              backgroundColor: ColorsManager.primaryColor,
            ),
            horizontalSpacing(10)
          ],
        ),
      )),
    );
  }
}
