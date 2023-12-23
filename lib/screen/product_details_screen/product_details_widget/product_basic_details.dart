import 'package:flutter/material.dart';

import '../../../core/widgets/custom_rating_bar.dart';
import '../../../utility/constants/app_spacing.dart';
import '../../../utility/constants/colors.dart';
import '../../../utility/constants/font_manager.dart';
import '../../../utility/constants/style_manager.dart';
import '../../../utility/constants/values_manager.dart';

class ProductBasicDetails extends StatelessWidget {
  const ProductBasicDetails({
    super.key,
  });

  final bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppPadding.p16),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            SizedBox(
              height: 60,
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.r4),
                    child: Image.network(
                      'https://source.unsplash.com/random?sig=$index',
                      height: 60,
                      width: 60,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),
            AppSpacing.verticalSpacing16,
            Text(
              "Women’s Slippers - Spring and Autumn and Summer Shoe Summer Pregnant WWWWWWWWWWomen...",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: getRegularStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s16,
              ),
            ),
            AppSpacing.verticalSpacing16,
            Row(
              children: [
                const RatingBar.readOnly(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star,
                  filledColor: Colors.yellow,
                  initialRating: 1,
                  size: AppSize.s18,
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
                          fontSize: FontSize.s16,
                        ),
                      ),
                      TextSpan(
                        text: " (1.2k)",
                        style: getRegularStyle(
                          color: k4D4D4D,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.horizontalSpacing16,
                const SizedBox(
                  height: AppSize.s20,
                  child: VerticalDivider(color: kDDDDDD),
                ),
                AppSpacing.horizontalSpacing16,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "42565",
                        style: getSemiBoldStyle(
                          color: kTextBlackColor,
                          fontSize: FontSize.s16,
                        ),
                      ),
                      TextSpan(
                        text: " Sold",
                        style: getRegularStyle(
                          color: k4D4D4D,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(Icons.favorite_border,
                    size: AppSize.s16, color: kTextBlackColor),
                AppSpacing.horizontalSpacing16,
                const SizedBox(
                  height: AppSize.s20,
                  child: VerticalDivider(color: kDDDDDD),
                ),
                AppSpacing.horizontalSpacing16,
                const Icon(Icons.share_outlined,
                    size: AppSize.s16, color: kTextBlackColor),
              ],
            ),
            AppSpacing.verticalSpacing16,
            Row(
              children: [
                detailsCard(),
                AppSpacing.horizontalSpacing14,
                detailsCard(),
                AppSpacing.horizontalSpacing14,
                detailsCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Expanded detailsCard() {
    return Expanded(
      child: Container(
        height: AppSize.s64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.r6),
          border: Border.all(color: isSelected ? kBaseColor : kDDDDDD),
          color: isSelected ? kECFAF3 : kWhiteColor,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "৳127.08",
              style: TextStyle(
                height: 1,
                fontSize: FontSize.s18,
                fontWeight: FontWeightManager.bold,
                color: kTextBlackColor,
              ),
            ),
            AppSpacing.verticalSpacing8,
            Text(
              "99-1000 Pcs",
              style: TextStyle(
                height: 1.2,
                fontSize: FontSize.s12,
                fontWeight: FontWeightManager.regular,
                color: k707070,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
