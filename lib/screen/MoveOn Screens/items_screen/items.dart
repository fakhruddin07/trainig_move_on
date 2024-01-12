import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';
import 'package:training_moveon/core/widgets/helper_widget.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../utility/constants/values_manager.dart';
import 'items_widget/items_list_widget.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  final TextEditingController _couponTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(AppRadius.r16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p16,
          right: AppPadding.p16,
          top: AppPadding.p24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Items(15)",
                  style: getBoldStyle(
                    color: k000000,
                    fontSize: FontSize.s16,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: AppSize.s14,
                    color: k000000.withOpacity(0.7),
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing16,
            const ItemsListWidget(),
            const Divider(color: kDDDDDD),
            AppSpacing.verticalSpacing8,
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '15 Pcs ',
                          style: getRegularStyle(color: k4D4D4D),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Details',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: FontSize.s16,
                              fontWeight: FontWeightManager.medium,
                              color: k0075D3,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "৳5,825.00",
                          style: getBoldStyle(
                              color: kTextBlackColor, fontSize: FontSize.s16),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing12,
                    Row(
                      children: [
                        Text(
                          "Domestic Shipping Charge",
                          style: getRegularStyle(
                            color: k4D4D4D,
                          ),
                        ),
                        AppSpacing.horizontalSpacing4,
                        const Icon(
                          Icons.info_outline,
                          size: AppSize.s12,
                          color: k4D4D4D,
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing12,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 154,
                          child: Text(
                            "Ship to Bangladesh by MoveOn Ship for me",
                            style: getRegularStyle(color: k4D4D4D),
                          ),
                        ),
                        Text(
                          "৳0.00",
                          style: getRegularStyle(color: k4D4D4D),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing14,
                    const Divider(color: kDDDDDD),
                    AppSpacing.verticalSpacing14,
                    Text(
                      'Coupon Code',
                      style: getRegularStyle(
                        color: k4D4D4D,
                        fontSize: FontSize.s16,
                      ),
                    ),
                    AppSpacing.verticalSpacing8,
                    KTextField(
                      controller: _couponTEController,
                      borderRadius: AppRadius.r8,
                      hintText: 'Enter code',
                      hintColor: kBorderColor,
                      suffixIcon: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.r8),
                          ),
                          backgroundColor: kDDDDDD,
                        ),
                        child: Text(
                          'Apply',
                          style: getMediumStyle(color: k4D4D4D),
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpacing8,
                    Row(
                      children: [
                        Image.asset(
                          ImageAssets.percentPng,
                          height: 16,
                          width: 16,
                          color: kBaseColor,
                        ),
                        AppSpacing.horizontalSpacing4,
                        Text(
                          'Apply coupon code now',
                          style: getRegularStyle(color: kBaseColor),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing16,
                    const Divider(color: kDDDDDD),
                    AppSpacing.verticalSpacing14,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: getRegularStyle(
                            color: k000000,
                            fontSize: FontSize.s16,
                          ),
                        ),
                        Text(
                          "৳5,825.00",
                          style: getBoldStyle(
                            color: kTextBlackColor,
                            fontSize: FontSize.s16,
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing16,
                    Text(
                      'Shipping charge will be include later',
                      style: getRegularStyle(
                        color: kBadgeColor,
                        fontSize: FontSize.s16,
                      ),
                    ),
                    AppSpacing.verticalSpacing24,
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: kEEEEEE,
                        border: Border.all(color: kDDDDDD),
                        borderRadius: BorderRadius.circular(AppRadius.r8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shipping Type',
                                  style: getRegularStyle(
                                      color: k707070, fontSize: FontSize.s16),
                                ),
                                AppSpacing.verticalSpacing8,
                                Text(
                                  'Shipping Time',
                                  style: getRegularStyle(
                                      color: k707070, fontSize: FontSize.s16),
                                ),
                                AppSpacing.verticalSpacing14,
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        const CircleAvatar(
                                          radius: AppRadius.r6,
                                          backgroundColor: k707070,
                                          child: CircleAvatar(
                                            backgroundColor: kEEEEEE,
                                            radius: 5,
                                            child: CircleAvatar(
                                              backgroundColor: k707070,
                                              radius: AppRadius.r2,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: AppSize.s26,
                                          color: k707070,
                                          width: AppSize.s1,
                                        ),
                                        const CircleAvatar(
                                          radius: AppRadius.r6,
                                          backgroundColor: k707070,
                                          child: CircleAvatar(
                                            backgroundColor: kEEEEEE,
                                            radius: 5,
                                            child: CircleAvatar(
                                              backgroundColor: k707070,
                                              radius: AppRadius.r2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    AppSpacing.horizontalSpacing6,
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Source Point',
                                          style: getRegularStyle(
                                              color: k707070,
                                              fontSize: FontSize.s16),
                                        ),
                                        AppSpacing.verticalSpacing16,
                                        Text(
                                          'Destination Point',
                                          style: getRegularStyle(
                                              color: k707070,
                                              fontSize: FontSize.s16),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Air',
                                  style: getRegularStyle(
                                      color: kTextBlackColor,
                                      fontSize: FontSize.s16),
                                ),
                                AppSpacing.verticalSpacing8,
                                Text(
                                  '10-15 days',
                                  style: getRegularStyle(
                                      color: kTextBlackColor,
                                      fontSize: FontSize.s16),
                                ),
                                AppSpacing.verticalSpacing14,
                                Text(
                                  'Shanghai, CN',
                                  style: getRegularStyle(
                                      color: kTextBlackColor,
                                      fontSize: FontSize.s16),
                                ),
                                AppSpacing.verticalSpacing16,
                                Text(
                                  'Dhaka, BD',
                                  style: getRegularStyle(
                                      color: kTextBlackColor,
                                      fontSize: FontSize.s16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    addH(52),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppPadding.p10,
                horizontal: AppPadding.p16,
              ),
              child: SizedBox(
                height: AppSize.s40,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kBaseColor,
                      splashFactory: NoSplash.splashFactory,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.r6),
                        side: BorderSide.none,
                      )),
                  onPressed: () {},
                  child: Text(
                    "Pay Now",
                    style: getSemiBoldStyle(color: kWhiteColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
