
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/helper/spacing.dart';
import 'package:payment/core/theming/colors.dart';
import 'package:payment/core/theming/font_weight.dart';
import 'package:payment/core/theming/styles.dart';
import 'package:payment/features/payment/ui/widgets/my_cart_screen/order_summery.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 120.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorsManager.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ColorsManager.primaryColor.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        width: 130,
                        'assets/images/sneakerss.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    horizontalSpacing(10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150.w,
                          child: Text(
                            maxLines: 2,
                            "Women's Sneakers Shoes",
                            style:
                                TextStylesManager.font16BlackRegular.copyWith(
                              fontWeight: FontWeightManager.medium,
                            ),
                          ),
                        ),
                        verticalSpacing(10),
                        Text(
                          r"$6,699.0",
                          style: TextStylesManager.font18BlackBold,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: -6.w,
              top: -6.h,
              child: Container(
                width: 28.w,
                height: 28.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManager.primaryColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close_rounded),
                  color: ColorsManager.white,
                  iconSize: 16,
                ),
              ),
            ),
          ],
        ),
        verticalSpacing(30),
        const OrderSummery(),
      ],
    );
  }
}
