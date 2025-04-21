import 'package:flutter/material.dart';
import 'package:payment/core/theming/colors.dart';

InputDecoration customInputDecoration({
  required String hintText,
  required Widget label,
  TextStyle? hintStyle,
  EdgeInsetsGeometry? contentPadding,
  bool readOnly = false,
  BorderRadius borderRadius = const BorderRadius.all(
    Radius.circular(8),
  ),
  Widget? prefixIcon,
  Widget? suffixIcon,
  String? prefixText,
  String? suffixText,
  Widget? helper,
  Color? fillColor,
}) {
  return InputDecoration(
    hintText: hintText,
    label: label,
    hintStyle: hintStyle ?? const TextStyle(color: Colors.grey, fontSize: 14),
    contentPadding: contentPadding ??
        const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
    enabledBorder: readOnly
        ? OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
              color: ColorsManager.midLighterGrey,
            ),
          )
        : OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 221, 218, 218),
            ),
          ),
    focusedBorder: readOnly
        ? OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(
                color: ColorsManager.midLighterGrey, width: 1.2),
          )
        : OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide:
                const BorderSide(color: ColorsManager.primaryColor, width: 1.2),
          ),
    errorBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: const BorderSide(
        color: ColorsManager.red,
        width: 1.2,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: const BorderSide(
        color: ColorsManager.red,
        width: 1.2,
      ),
    ),
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    prefixText: prefixText,
    suffixText: suffixText,
    helper: helper,
  );
}
