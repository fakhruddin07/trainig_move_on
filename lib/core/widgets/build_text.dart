import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  final String text;
  Color? txtClr;
  int? maximumLines;
  double? fontSize;
  BuildText({
    super.key,
    required this.text,
    this.txtClr,
    this.maximumLines,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: 1,
      minFontSize: 16,
      textAlign: TextAlign.left,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w700,
        color: txtClr,
      ),
    );
  }
}
