import 'package:flutter/material.dart';

import '../../../utility/constants/colors.dart';

class CustomDDBg extends StatelessWidget {
  final double width;
  final Widget child;

  const CustomDDBg({super.key, required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          border: Border.all(color: kBorderColor)),
      child: child,
    );
  }
}
