import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_rating_bar.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';
import 'package:training_moveon/widgets/product_details_widget/product_details_header.dart';

import '../../utility/constants/app_spacing.dart';
import '../../utility/constants/colors.dart';
import '../../utility/constants/style_manager.dart';

class YouMayLike extends StatelessWidget {
  const YouMayLike({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:AppPadding.p16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ProductDetailsHeader(headerTitle: "You may like"),
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
                        Icons.keyboard_arrow_right,
                        size: AppSize.s20,
                        color: kA0A0A0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p16, bottom: AppPadding.p24),
            child: SizedBox(
              height: 193,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p16),
                    child: SizedBox(
                      // height: 193,
                      width: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(AppRadius.r4),
                            child: Image.network(
                              'https://source.unsplash.com/random?sig=$index',
                              height: 130,
                              width: 130,
                              fit: BoxFit.fill,
                            ),
                          ),
                          AppSpacing.verticalSpacing16,
                          Text(
                            "BDT 8,5557.70",
                            style: getBoldStyle(
                              color: kTextBlackColor,
                              fontSize: FontSize.s14,
                            ),
                          ),
                          AppSpacing.verticalSpacing8,
                          Expanded(
                            child: Row(
                              children: [
                                const RatingBar.readOnly(
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star,
                                  initialRating: 1,
                                  maxRating: 1,
                                  size: AppSize.s16,
                                ),
                                AppSpacing.horizontalSpacing4,
                                Text(
                                  "4.7",
                                  style: getMediumStyle(
                                    color: k000000.withOpacity(0.7),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "1500 Sold",
                                  style: getMediumStyle(
                                    color: k000000.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
