import 'package:flutter/material.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/values_manager.dart';

class PaymentOption extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final EdgeInsetsGeometry padding;
  final double? height;
  const PaymentOption({
    super.key,
    required this.child,
    this.borderColor = kDDDDDD,
    this.padding = const EdgeInsets.symmetric(horizontal: AppPadding.p16),
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: AppSize.s1),
        borderRadius: BorderRadius.circular(AppRadius.r6),
      ),
      child: child,
    );
  }
}