import 'package:flutter/material.dart';
import '../../../utility/constants/colors.dart';

class ConRichTxt extends StatelessWidget {
  final String prefixTxt;
  final String suffixTxt;
  Color? prefixClr;
  Color? suffixClr;
  FontWeight? suffixWeight;
  ConRichTxt({
    super.key,
    required this.prefixTxt,
    required this.suffixTxt,
    this.prefixClr,
    this.suffixClr,
    this.suffixWeight,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: prefixTxt,
        style: TextStyle(
          fontSize: 14,
          color: prefixClr ?? kTextBlackColor,
          fontWeight: FontWeight.w700,
        ),
        children: [
          TextSpan(
            text: suffixTxt,
            style: TextStyle(
              fontSize: 14,
              color: suffixClr??kTextGrayColor,
              fontWeight: suffixWeight?? FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
