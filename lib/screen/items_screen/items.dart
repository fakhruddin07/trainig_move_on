import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_image.dart';
import 'package:training_moveon/core/widgets/helper_widget.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../utility/constants/values_manager.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(AppRadius.r16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
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
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    size: AppSize.s14,
                    color: k000000.withOpacity(0.7),
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing16,
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppPadding.p8),
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
                                            style:
                                                getRegularStyle(color: k4D4D4D),
                                          ),
                                          const VerticalDivider(color: kA0A0A0),
                                          Text(
                                            "Weight: 1kg",
                                            style:
                                                getRegularStyle(color: k4D4D4D),
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
                    AppSpacing.verticalSpacing16,
                    const Divider(color: kDDDDDD),
                    AppSpacing.verticalSpacing16,
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "15 Pcs ",
                            style: getRegularStyle(color: k4D4D4D),
                            children: const [
                              TextSpan(
                                text: "Details",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: FontSize.s16,
                                  fontWeight: FontWeightManager.medium,
                                  color: k0075D3,
                                ),
                              ),
                            ],
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                        Text(
                          "৳0.00",
                          style: getRegularStyle(color: k4D4D4D),
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
                    AppSpacing.verticalSpacing16,
                    const Divider(color: kDDDDDD),
                    AppSpacing.verticalSpacing16,
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
                    addH(90),
                  ],
                ),
              ),
            ),
            AppSpacing.verticalSpacing16,
            SizedBox(
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
                  "Place order",
                  style: getSemiBoldStyle(color: kWhiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
