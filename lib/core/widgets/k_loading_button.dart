import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../utility/constants/colors.dart';

class KLoadingButton extends StatelessWidget {
  const KLoadingButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isLoading = false,
    this.bgColor = kBaseColor,
    this.textColor = Colors.white,
    this.borderRadius = 4,
    required this.width,
    required this.height,
  });

  final String title;
  final Function() onPressed;
  final Color bgColor;
  final bool isLoading;
  final Color textColor;
  final double borderRadius;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitThreeBounce(
      color: Colors.white,
      size: 20.0,
    );
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: EdgeInsets.zero,
      onPressed: isLoading ? null : onPressed,
      child: Container(
        height: 46,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: bgColor,
        ),
        child: Center(
          child: isLoading
              ? spinkit
              : Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
        ),
      ),
    );
  }
}
