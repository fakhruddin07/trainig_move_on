import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../utility/constants/colors.dart';

class KPasswordTextField extends StatefulWidget {
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool readOnly;
  final String? hintText;
  final TextInputAction? inputAction;

  const KPasswordTextField(
      {super.key,
      required this.controller,
      this.prefixIcon,
      this.validator,
      this.keyboardType = TextInputType.name,
      this.onTap,
      this.suffixIcon,
      this.numberFormatters = false,
      this.hintText,
      this.inputAction,
      this.readOnly = false});
  final bool numberFormatters;

  @override
  State<KPasswordTextField> createState() => _KPasswordTextFieldState();
}

class _KPasswordTextFieldState extends State<KPasswordTextField> {
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: const TextStyle(fontSize: 14),
      validator: widget.validator,
      cursorColor: kTextGrayColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle( color: kGreyColor),
        prefixIcon: widget.prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kBaseColor),
          borderRadius: BorderRadius.circular(5),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kLightGreyColor),
          borderRadius: BorderRadius.circular(5),
        ),
        suffix: InkWell(
          onTap: _togglePasswordView,
          child: Icon(
            _isHidden ? Icons.visibility : Icons.visibility_off,
            color: kDarkGreyColor.withOpacity(0.5),
            size: 18,
          ),
        ),
      ),
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      obscureText: _isHidden,
      textInputAction: widget.inputAction,
      keyboardType: widget.keyboardType,
      inputFormatters: [
        if (widget.numberFormatters)
          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
      ],
    );
  }
}
