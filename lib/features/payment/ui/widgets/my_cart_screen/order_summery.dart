
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/helper/spacing.dart';
import "package:payment/core/theming/colors.dart";
import 'package:payment/core/theming/styles.dart';
import 'package:payment/features/payment/ui/widgets/my_cart_screen/check_button.dart';

class OrderSummery extends StatelessWidget {
  const OrderSummery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            boxShadow: [
              BoxShadow(
                color: ColorsManager.primaryColor.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "  Summary",
                  style: TextStylesManager.font16BlackMedium,
                ),
                verticalSpacing(4),
                Divider(
                  endIndent: 18.w,
                  indent: 18.w,
                  color: ColorsManager.black.withOpacity(0.2),
                ),
                verticalSpacing(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order",
                        style: TextStylesManager.font16BlackRegular
                            .copyWith(fontSize: 14.sp),
                      ),
                      Text(
                        r"$ 6,699.0",
                        style: TextStylesManager.font16BlackRegular
                            .copyWith(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery",
                        style: TextStylesManager.font16BlackRegular
                            .copyWith(fontSize: 14.sp),
                      ),
                      Text(
                        r"$ 180.0",
                        style: TextStylesManager.font16BlackRegular
                            .copyWith(fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
                verticalSpacing(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStylesManager.font16BlackMedium,
                      ),
                      Text(
                        r"$ 6,879.0",
                        style: TextStylesManager.font16BlackMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalSpacing(20),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            boxShadow: [
              BoxShadow(
                color: ColorsManager.primaryColor.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
            child: Row(
              children: [
                Text("Address", style: TextStylesManager.font16BlackMedium),
                const Spacer(),
                Text(
                  "40 E 7th St, New York",
                  style: TextStylesManager.font16BlackRegular.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalSpacing(15),
        const CheckButton()
      ],
    );
  }
}
