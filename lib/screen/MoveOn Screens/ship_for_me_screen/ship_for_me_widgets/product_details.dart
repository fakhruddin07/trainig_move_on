import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Product Details",
        style: getBoldStyle(
          color: kTextBlackColor,
          fontSize: FontSize.s30,
        ),
      ),
    );
  }
}
