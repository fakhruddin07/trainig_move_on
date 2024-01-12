import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

@RoutePage()
class PracticeTheme extends StatefulWidget {
  const PracticeTheme({super.key});

  @override
  State<PracticeTheme> createState() => _PracticeThemeState();
}

class _PracticeThemeState extends State<PracticeTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Practice Theme',
          // style: getBoldStyle(color: kWhiteColor, fontSize: FontSize.s30),
        ),
        //backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Color'),
              AppSpacing.verticalSpacing8,
              TextFormField(),
              AppSpacing.verticalSpacing8,
              InkWell(
                onTap: () {},
                child: Text(
                  "INK-WELL",
                  style: getBoldStyle(color: kTextBlackColor),
                ),
              ),
              AppSpacing.verticalSpacing8,
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Elevated Button",
                  style: getBoldStyle(color: kWhiteColor),
                ),
              ),
              AppSpacing.verticalSpacing8,
              TextButton(
                onPressed: () {},
                child: Text(
                  "Text Button",
                  style: getBoldStyle(color: kTextBlackColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*class PracticeTheme extends StatefulWidget {
  const PracticeTheme({super.key});

  @override
  State<PracticeTheme> createState() => _PracticeThemeState();
}

class _PracticeThemeState extends State<PracticeTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Text(
          'Practice Theme',
          style: getBoldStyle(color: kWhiteColor, fontSize: FontSize.s30),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Shimmer.fromColors(
        baseColor: k707070.withOpacity(0.3),
        highlightColor: k707070.withOpacity(0.1),
        enabled: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: AppPadding.p16,
                left: AppPadding.p16,
                right: AppPadding.p16,
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      height: AppSize.s18,
                      width: AppSize.s18,
                      color: kWhiteColor,
                    ),
                  ),
                  AppSpacing.horizontalSpacing8,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      height: AppSize.s18,
                      width: AppSize.s44,
                      color: kWhiteColor,
                    ),
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppRadius.r2),
                    child: Container(
                      height: AppSize.s18,
                      width: AppSize.s62,
                      color: kWhiteColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 2,
                separatorBuilder: (context, index) => Container(
                  height: AppSize.s8,
                  color: kWhiteColor,
                  width: double.maxFinite,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r2),
                              child: Container(
                                height: AppSize.s18,
                                width: AppSize.s18,
                                color: kWhiteColor,
                              ),
                            ),
                            AppSpacing.horizontalSpacing8,
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r2),
                              child: Container(
                                height: AppSize.s20,
                                width: 142,
                                color: kWhiteColor,
                              ),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r2),
                              child: Container(
                                height: AppSize.s18,
                                width: 82,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing16,
                        Container(
                          height: AppSize.s1,
                          width: double.maxFinite,
                          color: kWhiteColor,
                        ),
                        AppSpacing.verticalSpacing16,
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r2),
                              child: Container(
                                height: AppSize.s18,
                                width: AppSize.s18,
                                color: kWhiteColor,
                              ),
                            ),
                            AppSpacing.horizontalSpacing8,
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r2),
                              child: Container(
                                width: 72,
                                height: 72,
                                color: kWhiteColor,
                              ),
                            ),
                            // SvgPicture.asset(ImageAssets.shoePng, width: 56, height: 56),
                            AppSpacing.horizontalSpacing8,
                            Expanded(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppRadius.r2),
                                child: Container(
                                  color: kWhiteColor,
                                  height: 44,
                                  width: double.maxFinite,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: AppPadding.p28,
                              top: AppPadding.p16,
                              bottom: AppPadding.p16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(AppRadius.r2),
                            child: Container(
                              width: 124,
                              height: 18,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: 2,
                          separatorBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Container(
                              height: AppSize.s1,
                              color: kWhiteColor,
                            ),
                          ),
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.r2),
                                  child: Container(
                                    height: AppSize.s18,
                                    width: AppSize.s18,
                                    color: kWhiteColor,
                                  ),
                                ),
                                AppSpacing.horizontalSpacing8,
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(AppRadius.r2),
                                  child: Container(
                                    width: 72,
                                    height: 72,
                                    color: kWhiteColor,
                                  ),
                                ),
                                AppSpacing.horizontalSpacing8,
                                Expanded(
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(AppRadius.r2),
                                        child: Container(
                                          color: kWhiteColor,
                                          height: 42,
                                          width: double.maxFinite,
                                        ),
                                      ),
                                      AppSpacing.verticalSpacing8,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                AppRadius.r2),
                                            child: Container(
                                              color: kWhiteColor,
                                              width: 102,
                                              height: 26,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                AppRadius.r2),
                                            child: Container(
                                              color: kWhiteColor,
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                        AppSpacing.verticalSpacing16,
                        Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppRadius.r2),
                                child: Container(
                                  color: kWhiteColor,
                                  height: 32,
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
                                  height: 32,
                                ),
                              ),
                            ),
                            AppSpacing.horizontalSpacing36,
                            Expanded(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppRadius.r2),
                                child: Container(
                                  color: kWhiteColor,
                                  height: 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing16,
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppRadius.r2),
                          child: Container(
                            color: kWhiteColor,
                            height: 112,
                            width: double.maxFinite,
                          ),
                        ),
                        AppSpacing.verticalSpacing16,
                        Align(
                          alignment: Alignment.centerRight,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(AppRadius.r2),
                            child: Container(
                              color: kWhiteColor,
                              height: 24,
                              width: 142,
                            ),
                          ),
                        ),
                        AppSpacing.verticalSpacing16,
                        ClipRRect(
                          borderRadius: BorderRadius.circular(AppRadius.r2),
                          child: Container(
                            color: kWhiteColor,
                            height: 48,
                            width: double.maxFinite,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
