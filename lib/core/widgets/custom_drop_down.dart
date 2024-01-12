import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';

import '../../../utility/constants/app_spacing.dart';
import '../../../utility/constants/colors.dart';
import '../../utility/constants/values_manager.dart';
import 'custom_dd_bg.dart';
import 'raw_flex_drop_down.dart';

class CustomDropDown extends StatelessWidget {
  final OverlayPortalController controller;
  final String selectedValue;
  final Widget child;
  final bool isExpanded;
  final String imgUrl;
  final Color borderColor;

  const CustomDropDown({
    super.key,
    required this.controller,
    required this.selectedValue,
    required this.child,
    required this.isExpanded,
    this.imgUrl = '',
    this.borderColor = kBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return RawFlexDropDown(
      controller: controller,
      buttonBuilder: (context, onTap) {
        return Container(
          height: 46,
          padding:
              const EdgeInsets.only(left: 14, top: 8, bottom: 8, right: 8),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              border: Border.all(color: borderColor)),
          child: InkWell(
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                imgUrl==''? const SizedBox() : SizedBox(
                    height: 20,
                    width: 20,
                    child: SvgPicture.network(imgUrl)),

                imgUrl==''? const SizedBox() : AppSpacing.horizontalSpacing4,

                Expanded(
                  child: Text(
                    selectedValue,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: k707070),
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: controller.isShowing ? kBorderColor : kBorderColor,
                ),
              ],
            ),
          ),
        );
      },
      menuBuilder: (context, width) {
        return CustomDDBg(
          width: width!,
          child: child,
        );
      },
    );
  }
}

class CustomDropDown2 extends StatelessWidget {
  final OverlayPortalController controller;
  final String selectedValue;
  final Widget child;
  final bool isExpanded;
  final String imgUrl;
  final Color borderColor;
  final Color bgColor;
  final double btnHeight;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;
  final MainAxisAlignment mainAxisAlignment;

  const CustomDropDown2({
    super.key,
    required this.controller,
    required this.selectedValue,
    required this.child,
    required this.isExpanded,
    this.imgUrl = '',
    this.borderColor = kBorderColor,
    this.bgColor = kTransparent,
    this.btnHeight = 46,
    this.fontSize = FontSize.s14,
    this.fontWeight = FontWeightManager.regular,
    this.fontColor = k707070,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
  });

  @override
  Widget build(BuildContext context) {
    return RawFlexDropDown(
      controller: controller,
      buttonBuilder: (context, onTap) {
        return Container(
          height: btnHeight,
          padding:
          const EdgeInsets.only(left: AppPadding.p4, top: AppPadding.p8, bottom: AppPadding.p8, right: AppPadding.p8),
          decoration: BoxDecoration(
            color: bgColor,
              borderRadius: const BorderRadius.all(Radius.circular(AppRadius.r4)),
              border: Border.all(color: borderColor)),
          child: InkWell(
            focusColor: kTransparent,
            highlightColor: kTransparent,
            hoverColor: kTransparent,
            splashColor: kTransparent,
            onTap: onTap,
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              children: [

                imgUrl==''? const SizedBox() : SizedBox(
                    height: AppSize.s20,
                    width: AppSize.s20,
                    child: SvgPicture.network(imgUrl)),

                imgUrl==''? const SizedBox() : AppSpacing.horizontalSpacing4,

                Text(
                  selectedValue,
                  style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      color: fontColor,),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: controller.isShowing ? kBorderColor : kBorderColor,
                ),
              ],
            ),
          ),
        );
      },
      menuBuilder: (context, width) {
        return CustomDDBg(
          width: width!,
          child: child,
        );
      },
    );
  }
}