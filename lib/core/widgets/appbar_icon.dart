import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utility/constants/colors.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
    required this.onPressed,
    required this.iconPath,
    this.width = 40,
    this.padding = 8,
    this.iconColor = kBlackColor,
  });

  final Function() onPressed;
  final String iconPath;
  final double width;
  final double padding;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: width,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Container(
          width: width,
          height: width,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: kBaseColor2,
              width: 1,
            ),
          ),
          child: SvgPicture.asset(
            iconPath,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}
