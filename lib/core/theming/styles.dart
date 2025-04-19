import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment/core/theming/colors.dart';
import 'package:payment/core/theming/font_weight.dart';

abstract class TextStylesManager {
  static TextStyle font8BlueRegular = TextStyle(
    color: ColorsManager.primaryColor,
    fontSize: 8.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: 'Nunito',
  );
  static TextStyle font16WhiteMedium = TextStyle(
    color: ColorsManager.white,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: 'Nunito',
  );
  static TextStyle font18BlackRegular = TextStyle(
    color: ColorsManager.black,
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: 'Nunito',
  );
  static TextStyle font10BlackRegular = TextStyle(
    color: ColorsManager.black,
    fontSize: 10.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: 'Nunito',
  );
  static TextStyle font14BlackMedium = TextStyle(
    color: ColorsManager.black,
    fontSize: 14.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: 'Nunito',
  );
  static TextStyle font16BlackRegular = TextStyle(
    color: ColorsManager.black,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: 'Nunito',
  );
  static TextStyle font14MediumGrayRegular = TextStyle(
    color: ColorsManager.mediumGrey,
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: 'Nunito',
  );
  static TextStyle font16MediumGrayRegular = TextStyle(
    color: ColorsManager.mediumGrey,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: 'Nunito',
  );
  static TextStyle font16BlackMedium = TextStyle(
    color: ColorsManager.black,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: 'Nunito',
  );
  static TextStyle font18BlackBold = TextStyle(
    color: ColorsManager.black,
    fontSize: 18.sp,
    fontWeight: FontWeightManager.bold,
    fontFamily: 'Nunito',
  );
}
