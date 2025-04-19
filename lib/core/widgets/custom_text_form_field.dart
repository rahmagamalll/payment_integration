import 'package:flutter/material.dart';
import 'package:payment/core/theming/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool readOnly;
  final IconButton? prefixIcon;
  final Widget? suffixIcon;
  final BorderRadius borderRadius;
  final TextStyle? hintStyle;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final Widget? helper;

  const CustomTextFormField({
    super.key,
    this.hintText = '',
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    required this.borderRadius,
    this.hintStyle,
    this.contentPadding,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.readOnly = false,
    this.helper,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Ensure maxLines is 1 if obscureText is true
      maxLines: obscureText ? 1 : maxLines,
      readOnly: readOnly,
      focusNode: focusNode,
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      validator: validator,
      cursorColor: ColorsManager.primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        contentPadding: contentPadding,
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
                  color: ColorsManager.softGrey,
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
                borderSide: const BorderSide(
                    color: ColorsManager.primaryColor, width: 1.2),
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
        helper: helper,
      ),
    );
  }
}
