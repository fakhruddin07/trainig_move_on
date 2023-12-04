import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utility/constants/app_spacing.dart';
import '../../../utility/constants/colors.dart';
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
