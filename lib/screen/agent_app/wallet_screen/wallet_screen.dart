import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/con_richtxt.dart';
import 'package:training_moveon/core/widgets/custom_image.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

@RoutePage()
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wallet',
          style: getBoldStyle(
            color: kTextBlackColor,
            fontSize: FontSize.s16,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 32,
                  width: 100,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: kDDDDDD),
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.arrow_downward,
                          size: AppSize.s14,
                          color: k4D4D4D,
                        ),
                        AppSpacing.horizontalSpacing8,
                        Text(
                          'Withdraw',
                          style: getMediumStyle(color: k4D4D4D),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.horizontalSpacing16,
                SizedBox(
                  height: 32,
                  width: 100,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: kDDDDDD),
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.arrow_upward,
                          size: AppSize.s14,
                          color: k4D4D4D,
                        ),
                        AppSpacing.horizontalSpacing8,
                        Text(
                          'Topup',
                          style: getMediumStyle(color: k4D4D4D),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing16,
            DecoratedBox(
              decoration: BoxDecoration(
                color: kF5F5F5,
                border: Border.all(color: kDDDDDD),
                borderRadius: BorderRadius.circular(AppRadius.r8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  AppPadding.p16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Available Balance',
                          style: getBoldStyle(color: kTextBlackColor),
                        ),
                        const Spacer(),
                        CustomImage(
                          imgUrl: 'https://source.unsplash.com/random?sig=1',
                          imgHeight: AppSize.s20,
                          imgWidth: AppSize.s20,
                          imgFit: BoxFit.fill,
                          borderRadius: AppRadius.r2,
                        ),
                        AppSpacing.horizontalSpacing8,
                        Text(
                          'Bangladesh',
                          style: getRegularStyle(color: kTextBlackColor),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing16,
                    Text(
                      '৳5700',
                      style: getBoldStyle(color: kTextBlackColor, fontSize: 32),
                    ),
                    AppSpacing.verticalSpacing16,
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 2.5,
                          backgroundColor: kFF9100,
                        ),
                        AppSpacing.horizontalSpacing8,
                        Text(
                          'Pending: ৳0',
                          style: getRegularStyle(color: kTextBlackColor),
                        ),
                        AppSpacing.horizontalSpacing24,
                        const CircleAvatar(
                          radius: 2.5,
                          backgroundColor: kBadgeColor,
                        ),
                        AppSpacing.horizontalSpacing8,
                        Text(
                          'Hold: ৳0',
                          style: getRegularStyle(color: kTextBlackColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            AppSpacing.verticalSpacing28,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: getBoldStyle(
                    color: kTextBlackColor,
                    fontSize: FontSize.s16,
                  ),
                ),
                SizedBox(
                  height: 32,
                  width: 108,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppRadius.r4),
                      border: Border.all(color: kDDDDDD),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.filter_alt_outlined,
                          size: AppSize.s16,
                          color: k4D4D4D,
                        ),
                        AppSpacing.horizontalSpacing4,
                        Text(
                          'All Filter',
                          style: getRegularStyle(color: k4D4D4D),
                        ),
                        AppSpacing.horizontalSpacing4,
                        const Icon(
                          Icons.keyboard_arrow_down,
                          size: AppSize.s16,
                          color: k707070,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing8,
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppRadius.r6),
                border: Border.all(color: kDDDDDD),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                separatorBuilder: (context, index) => const Divider(
                  color: kEEEEEE,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return transactionsWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding transactionsWidget() {
    return Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ConRichTxt(
                              prefixTxt: 'Transaction ID: ',
                              prefixClr: k707070,
                              prefixWeight: FontWeightManager.regular,
                              suffixTxt: '52026',
                              suffixClr: kTextBlackColor,
                              suffixWeight: FontWeightManager.regular,
                            ),
                            AppSpacing.verticalSpacing4,
                            ConRichTxt(
                              prefixTxt: 'Note: ',
                              prefixClr: k707070,
                              prefixWeight: FontWeightManager.regular,
                              suffixTxt: 'Invoice is paid by wallet',
                              suffixClr: kTextBlackColor,
                              suffixWeight: FontWeightManager.regular,
                            ),
                            AppSpacing.verticalSpacing8,
                            Row(
                              children: [
                                Text(
                                  'Status: ',
                                  style: getRegularStyle(
                                    color: k4D4D4D,
                                  ),
                                ),
                                AppSpacing.verticalSpacing8,
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: kFF9100.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(
                                        AppRadius.r10),
                                    border: Border.all(color: kTransparent)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: AppPadding.p8,
                                      vertical: AppPadding.p2,
                                    ),
                                    child: Text(
                                      'Pending',
                                      style: getSemiBoldStyle(color: kFF9100),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '৳2000',
                              style: getBoldStyle(
                                color: kTextBlackColor,
                                fontSize: FontSize.s18,
                              ),
                            ),
                            Text(
                              '(Balance: ৳100)',
                              style: getRegularStyle(color: kTextBlackColor),
                            ),
                            AppSpacing.verticalSpacing4,
                            Text(
                              '10 Sep 2023',
                              style: getRegularStyle(color: k4D4D4D),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
  }
}
