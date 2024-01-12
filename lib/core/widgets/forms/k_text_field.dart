import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../utility/constants/colors.dart';

class KTextField extends StatelessWidget {
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Color? fillColor;
  final Color hintColor;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final String? Function(String?)? onChanged;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool readOnly;
  final String? hintText;
  final TextInputAction? inputAction;
  final EdgeInsets contentPadding;
  final int maxLines;
  final double borderRadius;

  const KTextField({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.fillColor,
    this.hintColor = kA0A0A0,
    this.validator,
    this.keyboardType = TextInputType.name,
    this.onTap,
    this.onChanged,
    this.suffixIcon,
    this.suffix,
    this.numberFormatters = false,
    this.obscureText = false,
    this.hintText,
    this.inputAction,
    this.maxLines = 1,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 10,
    ),
    this.borderRadius = 4,
    this.readOnly = false,
  });
  final bool obscureText, numberFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(fontSize: 14),
      validator: validator,
      cursorColor: kBaseColor,
      decoration: InputDecoration(
        fillColor: fillColor,
        errorStyle: const TextStyle(height: 0.7),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: contentPadding,
        isDense: true,
        hintStyle: TextStyle(
          color: hintColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintText: hintText,
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kBaseColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kDDDDDD,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kDDDDDD,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        suffixIcon: suffixIcon,
        // suffixIconConstraints: const BoxConstraints(maxHeight: 14),
        suffix: suffix,
      ),
      // enableSuggestions: true,
      // enableInteractiveSelection: true,
      // toolbarOptions: const ToolbarOptions(
      //   copy: true,
      //   cut: true,
      //   paste: true,
      //   selectAll: true,
      // ),
      readOnly: readOnly,
      onTap: onTap,
      maxLines: maxLines,
      obscureText: obscureText,
      textInputAction: inputAction,
      keyboardType: keyboardType,
      inputFormatters: [
        if (numberFormatters)
          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
      ],
      onChanged: onChanged,
    );
  }
}
