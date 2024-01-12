import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

class ValueAddedServices extends StatelessWidget {
  const ValueAddedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Value Added Services",
        style: getBoldStyle(
          color: kTextBlackColor,
          fontSize: FontSize.s30,
        ),
      ),
    );
  }
}
