import 'package:flutter/material.dart';

import '../../utility/constants/asset_manger.dart';
import '../../utility/constants/colors.dart';
import '../../utility/constants/style_manager.dart';
import '../../utility/constants/values_manager.dart';


class ProductShippingMethod extends StatelessWidget {
  const ProductShippingMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppPadding.p16),
      sliver: SliverToBoxAdapter(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: kWhiteColor,
              elevation: 0,
              splashFactory: NoSplash.splashFactory,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.r8),
                side: const BorderSide(color: kDDDDDD),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Select Shipping Method",
                style: getSemiBoldStyle(color: kTextBlackColor),
              ),
              Image.asset(
                ImageAssets.truckPng,
                height: 56,
                width: 56,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}