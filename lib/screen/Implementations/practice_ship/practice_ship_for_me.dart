import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_image.dart';
import 'package:training_moveon/core/widgets/custom_rating_bar.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

@RoutePage()
class PracticeShipForMe extends StatelessWidget {
  const PracticeShipForMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Practice Ship for me',
            style: getBoldStyle(
              color: kWhiteColor,
              fontSize: FontSize.s22,
            ),
          ),
          backgroundColor: kBaseColor,
        ),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16,
            vertical: AppPadding.p14,
          ),
          itemCount: 2,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: AppPadding.p8,
            mainAxisSpacing: AppPadding.p8,
            mainAxisExtent: 294,
          ),
          itemBuilder: (context, index) {
            return const ProductCart();
          },
        ));
  }
}

class ProductCart extends StatelessWidget {
  const ProductCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppRadius.r8,
        ),
        border: Border.all(
          color: kEEEEEE,
          width: AppSize.s1,
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppRadius.r8),
                  topRight: Radius.circular(AppRadius.r8),
                ),
                child: CustomImage(
                  imgUrl: 'https://source.unsplash.com/random?sig=1',
                  imgHeight: 156,
                  imgFit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                right: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: AppSize.s16,
                      width: 52,
                      decoration: BoxDecoration(
                        color: kBadgeColor,
                        borderRadius: BorderRadius.circular(AppRadius.r2),
                      ),
                      child: Center(child: Text('25% OFF', style: getBoldStyle(color: kWhiteColor, fontSize: FontSize.s10,),)),
                    ),
                    const Icon(Icons.favorite, size: AppSize.s22, color: k4D4D4D,),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'dataaaaaaaa aaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                  style: getRegularStyle(
                    color: kTextBlackColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                AppSpacing.verticalSpacing4,
                Row(
                  children: [
                    const RatingBar.readOnly(
                      filledIcon: Icons.star,
                      emptyIcon: Icons.star,
                      size: AppSize.s14,
                      initialRating: 1,
                      maxRating: 1,
                    ),
                    AppSpacing.verticalSpacing6,
                    RichText(
                      text: TextSpan(
                        text: '5 ',
                        style: getSemiBoldStyle(color: kTextBlackColor),
                        children: [
                          TextSpan(
                            text: '(1.2k)',
                            style: getRegularStyle(
                              color: kTextBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '25k Sold',
                      style: getRegularStyle(
                        color: kTextBlackColor,
                      ),
                    ),
                  ],
                ),
                AppSpacing.verticalSpacing4,Text(
                  '৳2550',
                  style: getBoldStyle(
                    color: kTextBlackColor,
                    fontSize: FontSize.s18,
                  ),
                ),
                AppSpacing.verticalSpacing4,
                const Text(
                  '৳3500',
                  style: TextStyle(
                    color: k707070,
                    fontSize: FontSize.s14,
                    fontWeight: FontWeightManager.regular,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                AppSpacing.verticalSpacing4,
                Row(
                  children: [
                    Image.asset(
                      ImageAssets.truckPng,
                      height: AppSize.s16,
                      width: AppSize.s16,
                    ),
                    AppSpacing.horizontalSpacing10,
                    Text(
                      'CN to BD: 10-12 days',
                      style: getMediumStyle(
                        color: const Color(0xFF42B58B),
                        fontSize: FontSize.s12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Image.asset(
                      ImageAssets.truckPng,
                      height: AppSize.s16,
                      width: AppSize.s16,
                    ),
                    AppSpacing.horizontalSpacing10,
                    Text(
                      'CN to BD: 10-12 days',
                      style: getMediumStyle(
                        color: const Color(0xFF42B58B),
                        fontSize: FontSize.s12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
