import 'package:flutter/material.dart';
import '../utility/constants/colors.dart';
import '../utility/constants/font_manager.dart';
import '../utility/constants/style_manager.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonTitle;
  final String routeName;
  const ButtonWidget({
    super.key,
    required this.buttonTitle,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: kBaseColor,
      ),
      child: Text(
        buttonTitle,
        style: getBoldStyle(
          color: kWhiteColor,
          fontSize: FontSize.s16,
        ),
      ),
    );
  }
}