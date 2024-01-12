import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../utility/constants/colors.dart';

class CustomDDBg extends StatelessWidget {
  final double width;
  final Widget child;

  const CustomDDBg({super.key, required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(top: AppPadding.p8),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(AppRadius.r4)),
          border: Border.all(color: kBorderColor)),
      child: child,
    );
  }
}
