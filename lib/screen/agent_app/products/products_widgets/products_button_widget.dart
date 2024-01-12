import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/colors.dart';

class ProductsButtonWidget extends StatelessWidget {
  final double btnHeight;
  final double btnWidth;
  final VoidCallback onPressed;
  final Color btnBgColor;
  final double btnBorderRadius;
  final dynamic child;
  final TextStyle style;
  const ProductsButtonWidget({
    super.key,
    required this.btnHeight,
    required this.onPressed,
    required this.btnBgColor,
    required this.btnBorderRadius,
    required this.child,
    this.btnWidth = 100,
    this.style = const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: kTextBlackColor),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: btnHeight,
      width: btnWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: btnBgColor,
          shadowColor: kTransparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnBorderRadius),
          ),
        ),
        child: child is String
            ? Text(
                child,
                style: style,
              )
            : child,
      ),
    );
  }
}
