import 'package:flutter/material.dart';
import 'package:training_moveon/widgets/product_details_widget/product_details_header.dart';

import '../../core/widgets/custom_rating_bar.dart';
import '../../utility/constants/app_spacing.dart';
import '../../utility/constants/colors.dart';
import '../../utility/constants/font_manager.dart';
import '../../utility/constants/style_manager.dart';
import '../../utility/constants/values_manager.dart';

class SellerInformation extends StatelessWidget {
  const SellerInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
          left: AppPadding.p16, top: AppPadding.p16, bottom: AppPadding.p16),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            const ProductDetailsHeader(headerTitle: "Seller Information"),
            AppSpacing.verticalSpacing16,
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.87rC-vQdkf1I5qv74_2LjwHaHp?rs=1&pid=ImgDetMain",
                  ),
                  radius: 20,
                ),
                AppSpacing.horizontalSpacing4,
                Text(
                  " 笔记本电脑实体工厂店",
                  style: TextStyle(
                    color: k000000,
                    fontSize: FontSize.s16,
                    height: 1,
                    fontWeight: FontWeightManager.medium,
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing12,
            Row(
              children: [
                const RatingBar.readOnly(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star,
                  filledColor: kF7A02E,
                  initialRating: 1,
                  size: AppSize.s16,
                  maxRating: 1,
                ),
                AppSpacing.horizontalSpacing4,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "5",
                        style: getSemiBoldStyle(
                          color: k000000,
                        ),
                      ),
                      TextSpan(
                        text: " (1.2k)",
                        style: getRegularStyle(
                          color: k000000.withOpacity(0.7),
                        ),
                      ),
                      TextSpan(
                        text: " Reviews",
                        style: getRegularStyle(
                          color: k4D4D4D,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.horizontalSpacing8,
                const SizedBox(
                  height: AppSize.s20,
                  child: VerticalDivider(color: kDDDDDD),
                ),
                AppSpacing.horizontalSpacing8,
                const Icon(Icons.thumb_up, color: k88B34C, size: AppSize.s16),
                AppSpacing.horizontalSpacing8,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "98%",
                        style: getSemiBoldStyle(
                          color: k000000,
                        ),
                      ),
                      TextSpan(
                        text: " Positive feedback",
                        style: getRegularStyle(
                          color: k000000.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing16,
            SizedBox(
              height: 188,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppRadius.r8),
                          child: Image.network(
                            "https://source.unsplash.com/random?sig=$index",
                            fit: BoxFit.fill,
                            height: 120,
                            width: 120,
                          ),
                        ),
                        AppSpacing.verticalSpacing16,
                        Text(
                          "৳825.00",
                          style: getSemiBoldStyle(
                              color: kTextBlackColor, fontSize: FontSize.s16),
                        ),
                        AppSpacing.verticalSpacing8,
                        Row(
                          children: [
                            const RatingBar.readOnly(
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star,
                              filledColor: Colors.yellow,
                              initialRating: 1,
                              size: AppSize.s14,
                              maxRating: 1,
                            ),
                            AppSpacing.horizontalSpacing4,
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "5",
                                    style: getSemiBoldStyle(
                                      color: kTextBlackColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " (100)",
                                    style: getRegularStyle(
                                      color: k4D4D4D,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AppSpacing.horizontalSpacing8,
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            AppSpacing.verticalSpacing16,
            Padding(
              padding: const EdgeInsets.only(right: AppPadding.p16),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kWhiteColor,
                            elevation: 0,
                            splashFactory: NoSplash.splashFactory,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppRadius.r8),
                              side: const BorderSide(color: kEEEEEE),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.favorite_border,
                              size: AppSize.s16,
                              color: kTextBlackColor,
                            ),
                            AppSpacing.horizontalSpacing4,
                            Text(
                              "Save this seller",
                              style: getMediumStyle(color: kTextBlackColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppSpacing.horizontalSpacing16,
                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kWhiteColor,
                            elevation: 0,
                            splashFactory: NoSplash.splashFactory,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppRadius.r8),
                              side: const BorderSide(color: kEEEEEE),
                            )),
                        child: Text(
                          "Visit Seller Store",
                          style: getMediumStyle(color: kTextBlackColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

