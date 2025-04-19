import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/theming/colors.dart';
import 'package:payment/core/theming/styles.dart';

// ignore: must_be_immutable
class CustomElevationButton extends StatelessWidget {
  CustomElevationButton({
    super.key,
    this.title,
    this.onPressed,
    this.style,
    this.backgroundColor,
    this.borderRadiusGeometry,
    this.heightOfButton,
    this.bodyOfButton,
    this.side,
    this.widthOfButton,
    this.overlayColor,
    this.borderColor,
    this.hasborderColor = false,
  });
  final String? title;
  void Function()? onPressed;
  Color? backgroundColor;
  Color? borderColor;
  bool hasborderColor;
  double? heightOfButton;
  double? widthOfButton;
  TextStyle? style;
  BorderRadiusGeometry? borderRadiusGeometry;
  Widget? bodyOfButton;
  BorderSide? side;
  Color? overlayColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: hasborderColor
            ? Colors.transparent
            : backgroundColor ?? ColorsManager.primaryColor,
        shape: RoundedRectangleBorder(
          side: hasborderColor
              ? BorderSide(
                  color: borderColor ?? ColorsManager.primaryColor, width: 1)
              : BorderSide.none,
          borderRadius: borderRadiusGeometry ?? BorderRadius.circular(16.r),
        ),
        shadowColor: Colors.transparent,
        elevation: 0,
        overlayColor: overlayColor,
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: widthOfButton ?? double.infinity,
        height: heightOfButton ?? 50.h,
        child: bodyOfButton ??
            Center(
              child: Text(
                title ?? "",
                style: style ?? TextStylesManager.font16WhiteMedium,
              ),
            ),
      ),
    );
  }
}
