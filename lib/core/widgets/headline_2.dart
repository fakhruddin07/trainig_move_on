import 'package:flutter/material.dart';

import '../../../utility/constants/colors.dart';

class HeadLine2 extends StatelessWidget {
  String text;


  HeadLine2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: kTextBlackColor,
          fontSize: 14,
          fontWeight: FontWeight.w700),
    );
  }
}
