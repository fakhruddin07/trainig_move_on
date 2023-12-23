import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_rating_bar.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/product_details_header.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

class ProductReviews extends StatefulWidget {
  const ProductReviews({super.key});

  @override
  State<ProductReviews> createState() => _ProductReviewsState();
}

class _ProductReviewsState extends State<ProductReviews> {
  GlobalKey targetedKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppPadding.p16),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            const ProductDetailsHeader(headerTitle: "Reviews"),
            AppSpacing.verticalSpacing16,
            Row(
              key: targetedKey,
              children: [
                Text(
                  "Overall rating",
                  style: getRegularStyle(
                    color: k707070,
                    fontSize: FontSize.s16,
                  ),
                ),
                const Spacer(),
                const RatingBar.readOnly(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star,
                  size: AppSize.s16,
                  initialRating: 5,
                ),
                AppSpacing.horizontalSpacing8,
                RichText(
                  text: TextSpan(
                    text: "5 ",
                    style: getSemiBoldStyle(
                      color: kTextBlackColor,
                      fontSize: FontSize.s16,
                    ),
                    children: [
                      TextSpan(
                        text: "(870)",
                        style: getRegularStyle(
                          color: k4D4D4D,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing16,
            const Divider(
              color: kDDDDDD,
            ),
            AppSpacing.verticalSpacing12,
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: AppPadding.p16),
                child: Divider(color: kDDDDDD),
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              "https://th.bing.com/th/id/OIP.9UNJzUIHWIJieFslatty4wHaEo?w=260&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                        ),
                        AppSpacing.horizontalSpacing12,
                        Text(
                          "Lee Jung",
                          style: getMediumStyle(
                            color: k000000,
                            fontSize: FontSize.s16,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "30 August, 2023",
                          style: getRegularStyle(color: k707070),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing12,
                    Row(
                      children: [
                        const RatingBar.readOnly(
                          filledIcon: Icons.star,
                          emptyIcon: Icons.star,
                          initialRating: 5,
                          size: AppSize.s16,
                        ),
                        AppSpacing.horizontalSpacing8,
                        Text(
                          "4.9",
                          style: getRegularStyle(
                            color: k4D4D4D,
                            fontSize: FontSize.s16,
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing12,
                    Text(
                      "Evalution party fails to make timely evaluation, the system default praise!aaaaaaa a a a a a a a a a a a a a a a a",
                      style: getRegularStyle(color: k000000),
                    ),
                    AppSpacing.verticalSpacing8,
                    SizedBox(
                      height: 48,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(right: AppPadding.p16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r4),
                              child: Image.network(
                                "https://source.unsplash.com/random?sig=$index",
                                height: 48,
                                width: 48,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                );
              },
            ),
            AppSpacing.verticalSpacing16,
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
}
