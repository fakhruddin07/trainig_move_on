import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import '../../../utility/constants/colors.dart';

class ConRichTxt extends StatelessWidget {
  final String prefixTxt;
  final String suffixTxt;
  Color? prefixClr;
  Color? suffixClr;
  double? prefixFontSize;
  double? suffixFontSize;
  FontWeight? prefixWeight;
  FontWeight? suffixWeight;
  ConRichTxt({
    super.key,
    required this.prefixTxt,
    required this.suffixTxt,
    this.prefixClr,
    this.suffixClr,
    this.prefixFontSize,
    this.suffixFontSize,
    this.prefixWeight,
    this.suffixWeight,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: prefixTxt,
        style: TextStyle(
          fontSize: prefixFontSize ?? FontSize.s14,
          color: prefixClr ?? kTextBlackColor,
          fontWeight: prefixWeight ?? FontWeight.w700,
        ),
        children: [
          TextSpan(
            text: suffixTxt,
            style: TextStyle(
              fontSize: suffixFontSize ?? FontSize.s14,
              color: suffixClr??kTextGrayColor,
              fontWeight: suffixWeight?? FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
