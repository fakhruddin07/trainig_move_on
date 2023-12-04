import 'package:flutter/material.dart';

import '../../../../utility/constants/colors.dart';

class KCheckBox extends StatelessWidget {
  const KCheckBox({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.color = kTextBlackColor,
    this.fontSize = 16,
  });

  final String title;
  final bool value;
  final Function onChanged;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      dense: true,
      activeColor: kTextBlackColor,
      title: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
      value: value,
      contentPadding: EdgeInsets.zero,
      onChanged: ((value) => onChanged()),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
