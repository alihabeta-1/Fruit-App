import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.hintStyle,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
  });

  final String hintText;
  final TextInputType keyboardType;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.cairoBold13,
        suffixIcon: suffixIcon,
        border: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: const BorderSide(
      color: Color(0xffE6E9EA),
      width: 1.5,
    ),
  );
}
