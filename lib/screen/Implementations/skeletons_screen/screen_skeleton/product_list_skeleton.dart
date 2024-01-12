import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';

@RoutePage()
class ProductListSkeleton extends StatelessWidget {
  const ProductListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product List Skeletons Screen',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s22,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Shimmer.fromColors(
        baseColor: k707070.withOpacity(0.5),
        highlightColor: k707070.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      color: kWhiteColor,
                      height: AppSize.s32,
                      width: 100,
                    ),
                  ),
                  AppSpacing.horizontalSpacing16,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      color: kWhiteColor,
                      height: AppSize.s32,
                      width: 100,
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpacing16,
              ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.r2),
                child: Container(
                  color: kWhiteColor,
                  height: 138,
                  width: double.maxFinite,
                ),
              ),
              AppSpacing.verticalSpacing28,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      color: kWhiteColor,
                      height: AppSize.s20,
                      width: 104,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      color: kWhiteColor,
                      height: AppSize.s32,
                      width: 108,
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpacing28,
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(vertical: AppPadding.p16),
                    child: Divider(color: kWhiteColor,),
                  ),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r2),
                        child: Container(
                          color: kWhiteColor,
                          height: 110,
                          width: double.maxFinite,
                        ),
                      );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
