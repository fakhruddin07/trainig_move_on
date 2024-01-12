import 'package:flutter/material.dart';

import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/asset_manger.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';
import '../../../../utility/constants/values_manager.dart';
import 'count_button_widget.dart';

class AddMoreVariations extends StatefulWidget {
  const AddMoreVariations({super.key});

  @override
  State<AddMoreVariations> createState() => _AddMoreVariationsState();
}

class _AddMoreVariationsState extends State<AddMoreVariations> {
  int initialValue = 0;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(AppRadius.r24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add more variations",
                      style: getBoldStyle(
                        color: kTextBlackColor,
                        fontSize: FontSize.s16,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close,
                        size: AppSize.s12,
                      ),
                    ),
                  ],
                ),
                AppSpacing.verticalSpacing16,
                const Text(
                  "Women’s Slippers- Spring and Autumn abcdefghijklmnopqrstuvwxyz",
                  style: TextStyle(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.bold,
                      color: kTextBlackColor,
                      overflow: TextOverflow.ellipsis),
                ),
                AppSpacing.verticalSpacing16,
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            SizedBox(
                              height: AppSize.s18,
                              width: AppSize.s18,
                              child: Checkbox(
                                value: false,
                                onChanged: (value) {
                                  setState(() {});
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.r2),
                                ),
                                activeColor: kBaseColor,
                                splashRadius: 0,
                                side: const BorderSide(
                                  color: kDDDDDD,
                                  width: 1,
                                ),
                              ),
                            ),
                            AppSpacing.horizontalSpacing12,
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r4),
                              child: Image.asset(
                                ImageAssets.sliderPng,
                                height: 32,
                                width: 32,
                              ),
                            ),
                            AppSpacing.horizontalSpacing8,
                            Text(
                              "Size: 38",
                              style: getRegularStyle(color: k000000),
                            ),
                            AppSpacing.horizontalSpacing14,
                            Text(
                              "৳120.50",
                              style: getRegularStyle(color: k707070),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 88,
                              height: 26,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CountButtonWidget(
                                    onTap: () {
                                      if (mounted) {
                                        setState(() {
                                          initialValue--;
                                        });
                                      }
                                    },
                                    icon: Icons.remove,
                                  ),
                                  Text(
                                    initialValue.toString(),
                                    style:
                                        getRegularStyle(color: kTextBlackColor),
                                  ),
                                  CountButtonWidget(
                                    onTap: () {
                                      if (mounted) {
                                        setState(() {
                                          initialValue++;
                                        });
                                      }
                                    },
                                    icon: Icons.add,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(
                        color: kEEEEEE,
                      ),
                      itemCount: 1000,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Row(
              children: [
                confirmationButton(
                  btnTitle: "Cancel",
                  btnBg: kEEEEEE,
                  btnTitleColor: k4D4D4D,
                  onPressed: () {},
                ),
                AppSpacing.horizontalSpacing16,
                confirmationButton(
                  btnTitle: "Submit",
                  btnBg: kBaseColor,
                  btnTitleColor: kWhiteColor,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded confirmationButton({
    required String btnTitle,
    required Color btnBg,
    required Color btnTitleColor,
    required VoidCallback onPressed,
  }) {
    return Expanded(
      child: SizedBox(
        height: 46,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.r6),
            ),
            backgroundColor: btnBg,
            /*padding: const EdgeInsets.symmetric(
              vertical: AppPadding.p18,
            ),*/
          ),
          child: Text(
            btnTitle,
            style: getMediumStyle(color: btnTitleColor),
          ),
        ),
      ),
    );
  }
}
