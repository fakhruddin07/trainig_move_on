import 'package:flutter/material.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/product_details_screen/product_details_widget/product_details_header.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../../utility/constants/values_manager.dart';

class ProductSpecifications extends StatelessWidget {
  const ProductSpecifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppPadding.p16),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            const ProductDetailsHeader(headerTitle: "Specifications"),
            AppSpacing.verticalSpacing16,
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      specificationsText(
                          textTitle: "Source Category", textColor: k707070),
                      AppSpacing.verticalSpacing16,
                      specificationsText(
                          textTitle: "Item number", textColor: k707070),
                      AppSpacing.verticalSpacing16,
                      specificationsText(
                          textTitle: "Slippers", textColor: k707070),
                      AppSpacing.verticalSpacing16,
                      specificationsText(
                          textTitle: "Sole material", textColor: k707070),
                      AppSpacing.verticalSpacing16,
                      specificationsText(
                          textTitle: "Applicable gender", textColor: k707070),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      specificationsText(
                          textTitle: "Spot goods", textColor: kTextBlackColor),
                      AppSpacing.verticalSpacing16,
                      specificationsText(
                          textTitle: "Stipe", textColor: kTextBlackColor),
                      AppSpacing.verticalSpacing16,
                      specificationsText(
                          textTitle: "Handle comfort slippers (character)",
                          textColor: kTextBlackColor),
                      AppSpacing.verticalSpacing16,
                      specificationsText(
                          textTitle: "TRP", textColor: kTextBlackColor),
                      AppSpacing.verticalSpacing16,
                      specificationsText(
                          textTitle: "Neutral/ men and woman",
                          textColor: kTextBlackColor),
                    ],
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing24,
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  elevation: 0,
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "View more",
                      style: getMediumStyle(color: kA0A0A0),
                    ),
                    AppSpacing.horizontalSpacing8,
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: AppSize.s20,
                      color: kA0A0A0,
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Text specificationsText(
          {required String textTitle, required Color textColor}) =>
      Text(
        textTitle,
        style: getRegularStyle(color: textColor),
      );
}
