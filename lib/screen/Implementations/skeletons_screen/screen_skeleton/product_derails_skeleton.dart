import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../../utility/constants/values_manager.dart';

@RoutePage()
class ProductDetailSkeletons extends StatefulWidget {
  const ProductDetailSkeletons({super.key});

  @override
  State<ProductDetailSkeletons> createState() => _ProductDetailSkeletonsState();
}

class _ProductDetailSkeletonsState extends State<ProductDetailSkeletons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Detail Skeletons Screen',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s22,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: SingleChildScrollView(
        child: Shimmer.fromColors(
          baseColor: k707070.withOpacity(0.5),
          highlightColor: k707070.withOpacity(0.1),
          enabled: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: kWhiteColor,
                height: 360,
                width: double.maxFinite,
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.only(left: AppPadding.p16),
                child: SizedBox(
                  height: 60,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r4),
                        child: Container(
                          color: kWhiteColor,
                          height: 60,
                          width: 60,
                        ),
                      );
                    },
                  ),
                ),
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Container(
                  color: kWhiteColor,
                  height: 48,
                ),
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 22,
                        width: 76,
                      ),
                    ),
                    AppSpacing.horizontalSpacing16,
                    const SizedBox(
                      height: AppSize.s20,
                      child: VerticalDivider(color: kDDDDDD),
                    ),
                    AppSpacing.horizontalSpacing16,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 20,
                        width: 86,
                      ),
                    ),
                    const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    AppSpacing.horizontalSpacing16,
                    const SizedBox(
                      height: AppSize.s20,
                      child: VerticalDivider(color: kDDDDDD),
                    ),
                    AppSpacing.horizontalSpacing16,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r2),
                        child: Container(
                          height: AppSize.s64,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                    AppSpacing.horizontalSpacing14,
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r2),
                        child: Container(
                          height: AppSize.s64,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                    AppSpacing.horizontalSpacing14,
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r2),
                        child: Container(
                          height: AppSize.s64,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 20,
                        width: 42,
                      ),
                    ),
                    SizedBox(
                      height: 46,
                      child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 12,
                        ),
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(AppRadius.r6),
                            child: Container(
                              color: kWhiteColor,
                              height: 46,
                              width: 46,
                            ),
                          );
                        },
                      ),
                    ),
                    // const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 12,
                        width: 12,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpacing16,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Divider(color: kDDDDDD),
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 20,
                        width: 42,
                      ),
                    ),
                    SizedBox(
                      height: 46,
                      child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 12,
                        ),
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(AppRadius.r6),
                            child: Container(
                              color: kWhiteColor,
                              height: 46,
                              width: 46,
                            ),
                          );
                        },
                      ),
                    ),
                    // const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 12,
                        width: 12,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpacing16,
              Container(
                height: AppSize.s8,
                color: kWhiteColor,
                width: double.maxFinite,
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppRadius.r2),
                  child: Container(
                    height: 56,
                    color: kWhiteColor,
                    width: double.maxFinite,
                  ),
                ),
              ),
              Container(
                height: AppSize.s8,
                color: kWhiteColor,
                width: double.maxFinite,
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppRadius.r2),
                  child: Container(
                    height: 20,
                    width: 140,
                    color: kWhiteColor,
                  ),
                ),
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: kWhiteColor,
                    ),
                    AppSpacing.horizontalSpacing4,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        height: AppSize.s16,
                        width: 166,
                        color: kWhiteColor,
                      ),
                    )
                  ],
                ),
              ),
              AppSpacing.verticalSpacing12,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        height: AppSize.s16,
                        width: AppSize.s16,
                        color: kWhiteColor,
                      ),
                    ),
                    AppSpacing.horizontalSpacing8,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        height: AppSize.s16,
                        width: 108,
                        color: kWhiteColor,
                      ),
                    ),
                    AppSpacing.horizontalSpacing8,
                    const SizedBox(
                      height: AppSize.s16,
                      child: VerticalDivider(
                        color: kWhiteColor,
                        thickness: 1,
                      ),
                    ),
                    AppSpacing.horizontalSpacing8,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        height: AppSize.s16,
                        width: AppSize.s16,
                        color: kWhiteColor,
                      ),
                    ),
                    AppSpacing.horizontalSpacing8,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        height: AppSize.s16,
                        width: 152,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.only(left: AppPadding.p16),
                child: SizedBox(
                  height: 188,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: AppPadding.p16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r4),
                              child: Container(
                                color: kWhiteColor,
                                height: 120,
                                width: 120,
                              ),
                            ),
                            AppSpacing.verticalSpacing16,
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r4),
                              child: Container(
                                color: kWhiteColor,
                                height: AppSize.s20,
                                width: 68,
                              ),
                            ),
                            AppSpacing.verticalSpacing8,
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.r2),
                                  child: Container(
                                    color: kWhiteColor,
                                    height: AppSize.s16,
                                    width: AppSize.s16,
                                  ),
                                ),
                                AppSpacing.horizontalSpacing6,
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.r2),
                                  child: Container(
                                    color: kWhiteColor,
                                    height: AppSize.s18,
                                    width: AppSize.s46,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              AppSpacing.verticalSpacing24,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r2),
                        child: Container(
                          height: AppSize.s46,
                          width: double.maxFinite,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                    AppSpacing.horizontalSpacing16,
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r2),
                        child: Container(
                          height: AppSize.s46,
                          width: double.maxFinite,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.verticalSpacing16,
              ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.r2),
                child: Container(
                  height: AppSize.s8,
                  width: double.maxFinite,
                  color: kWhiteColor,
                ),
              ),
              AppSpacing.verticalSpacing16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 100,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: AppPadding.p16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r4),
                        child: Container(
                          color: kWhiteColor,
                          height: 120,
                          width: 120,
                        ),
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
