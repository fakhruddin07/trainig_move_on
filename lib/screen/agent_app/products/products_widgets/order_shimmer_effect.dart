import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/values_manager.dart';

class OrderShimmerEffect extends StatelessWidget {
  const OrderShimmerEffect({
    super.key,
    required this.shimmerEnable,
  });

  final bool shimmerEnable;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: k707070.withOpacity(0.3),
      highlightColor: k707070.withOpacity(0.1),
      enabled: shimmerEnable,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.r2),
              child: Container(
                color: kWhiteColor,
                height: 18,
                width: 194,
              ),
            ),
            AppSpacing.verticalSpacing12,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                  BorderRadius.circular(AppRadius.r8),
                  child: Container(
                    color: kWhiteColor,
                    height: AppSize.s72,
                    width: AppSize.s72,
                  ),
                ),
                AppSpacing.horizontalSpacing16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:
                      BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 18,
                        width: 166,
                      ),
                    ),
                    AppSpacing.verticalSpacing8,
                    ClipRRect(
                      borderRadius:
                      BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 18,
                        width: 208,
                      ),
                    ),
                    AppSpacing.verticalSpacing8,
                    ClipRRect(
                      borderRadius:
                      BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 18,
                        width: 130,
                      ),
                    ),
                    AppSpacing.verticalSpacing8,
                    ClipRRect(
                      borderRadius:
                      BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 18,
                        width: 86,
                      ),
                    ),
                    AppSpacing.verticalSpacing6,
                    ClipRRect(
                      borderRadius:
                      BorderRadius.circular(AppRadius.r2),
                      child: Container(
                        color: kWhiteColor,
                        height: 24,
                        width: 214,
                      ),
                    ),
                  ],
                )
              ],
            ),
            AppSpacing.verticalSpacing16,
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.r2),
              child: Container(
                color: kWhiteColor,
                height: 24,
                width: 102,
              ),
            ),
            AppSpacing.verticalSpacing14,
            Row(
              children: [
                ClipRRect(
                  borderRadius:
                  BorderRadius.circular(AppRadius.r2),
                  child: Container(
                    color: kWhiteColor,
                    height: 18,
                    width: 166,
                  ),
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius:
                  BorderRadius.circular(AppRadius.r2),
                  child: Container(
                    color: kWhiteColor,
                    height: 18,
                    width: 94,
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing16,
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.r2),
              child: Container(
                color: kWhiteColor,
                height: 20,
                width: 70,
              ),
            ),
            AppSpacing.verticalSpacing12,
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.r2),
              child: Container(
                color: kWhiteColor,
                height: 32,
              ),
            ),
            AppSpacing.verticalSpacing16,
            ClipRRect(
              borderRadius: BorderRadius.circular(AppRadius.r2),
              child: Container(
                color: kWhiteColor,
                height: 24,
                width: 140,
              ),
            ),
            AppSpacing.verticalSpacing24,
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      color: kWhiteColor,
                      height: 40,
                    ),
                  ),
                ),
                AppSpacing.horizontalSpacing16,
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      color: kWhiteColor,
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}