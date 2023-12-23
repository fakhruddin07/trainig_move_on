import 'package:flutter/material.dart';

import '../../../utility/constants/colors.dart';
import '../../../utility/constants/font_manager.dart';
import '../../../utility/constants/style_manager.dart';



class ProductDetailsHeader extends StatelessWidget {
  final String headerTitle;
  const ProductDetailsHeader({
    super.key, required this.headerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      headerTitle,
      style:
      getBoldStyle(color: kTextBlackColor, fontSize: FontSize.s16),
    );
  }
}