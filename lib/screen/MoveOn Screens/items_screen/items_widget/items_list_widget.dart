import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_image.dart';
import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/style_manager.dart';
import '../../../../utility/constants/values_manager.dart';

class ItemsListWidget extends StatelessWidget {
  const ItemsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(vertical: AppPadding.p8),
            child: Row(
              children: [
                CustomImage(
                  imgUrl:
                  "https://source.unsplash.com/random?sig=$index",
                  imgHeight: AppSize.s50,
                  imgWidth: AppSize.s50,
                  borderRadius: AppRadius.r8,
                ),
                AppSpacing.horizontalSpacing8,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "COLMI P28 PLUS Smart Watch Cliiiiiiiiiiiiiiiiiiiiiiiiii",
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: getRegularStyle(color: k4D4D4D),
                      ),
                      AppSpacing.verticalSpacing4,
                      SizedBox(
                        height: 22,
                        width: 190,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quantity: 2",
                              style: getRegularStyle(color: k4D4D4D),
                            ),
                            const VerticalDivider(color: kA0A0A0),
                            Text(
                              "Weight: 1kg",
                              style: getRegularStyle(color: k4D4D4D),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}