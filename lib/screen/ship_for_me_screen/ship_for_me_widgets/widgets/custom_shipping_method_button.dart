import 'package:flutter/material.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/values_manager.dart';

class CustomShippingMethodButton extends StatelessWidget {
  final String orderType;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomShippingMethodButton({
    Key? key,
    required this.orderType,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p70),
        backgroundColor: isSelected ? kWhiteColor : Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s24),
        ),
      ),
      child: SizedBox(
        height: AppSize.s40,
        child: Center(
          child: Text(
            orderType,
            style: TextStyle(
              color: isSelected ? kBaseColor : kTextGrayColor,
              fontSize: FontSize.s14,
              fontWeight: isSelected
                  ? FontWeightManager.bold
                  : FontWeightManager.regular,
            ),
          ),
        ),
      ),
    );
  }
}
