import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../utility/constants/app_spacing.dart';
import '../../../utility/constants/colors.dart';
import '../../utility/constants/font_manager.dart';

class CustomDDItem extends StatelessWidget {
  final String imgUrl;
  final String selectedValue;
  final String label;

  const CustomDDItem(
      {super.key,
        this.imgUrl='',
      required this.selectedValue,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: selectedValue == label ? kEEEEEE : kTransparent,
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          // border: Border.all(color: kBorderColor),
        ),
        child: Row(
          children: [
            imgUrl==''?const SizedBox():SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.network(
                  imgUrl,
                  height: 20,
                  width: 20,
                )),
            imgUrl==''?const SizedBox():AppSpacing.horizontalSpacing4,
            Text(
              label,
              style: TextStyle(
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w400,
                  color: selectedValue == label ? Colors.black : Colors.black),
            ),
          ],
        ));
  }
}
