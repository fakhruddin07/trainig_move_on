import 'package:flutter/material.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/values_manager.dart';

class CountButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const CountButtonWidget({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 26,
        width: 26,
        decoration: BoxDecoration(
          border: Border.all(color: kDDDDDD),
          borderRadius: BorderRadius.circular(AppRadius.r4),
        ),
        child: Icon(
          icon,
          color: kTextGrayColor,
          size: AppSize.s10,
        ),
      ),
    );
  }
}
