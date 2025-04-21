import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/helper/spacing.dart';
import 'package:payment/core/theming/colors.dart';
import 'package:payment/core/theming/styles.dart';

class CheckButton extends StatefulWidget {
  const CheckButton({super.key});

  @override
  State<CheckButton> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Icon(
              isChecked
                  ? Icons.check_box_rounded
                  : Icons.check_box_outline_blank_rounded,
              color: isChecked
                  ? ColorsManager.primaryColor
                  : ColorsManager.softGrey,
            ),
          ),
          horizontalSpacing(6),
          Text(
            "add order conntains a gift.",
            style: TextStylesManager.font16BlackRegular.copyWith(
              color: ColorsManager.softGrey,
            ),
          )
        ],
      ),
    );
  }
}
