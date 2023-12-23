import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

class PracticeShimmerEffect extends StatefulWidget {
  const PracticeShimmerEffect({super.key});

  @override
  State<PracticeShimmerEffect> createState() => _PracticeShimmerEffectState();
}

class _PracticeShimmerEffectState extends State<PracticeShimmerEffect> {
  bool enable = true;

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      enable = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice Shimmer Effect"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if(enable){
                    return Shimmer.fromColors(
                      baseColor: k707070.withOpacity(0.3),
                      highlightColor: k707070.withOpacity(0.1),
                      enabled: enable,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: kWhiteColor,
                              radius: 30,
                            ),
                            AppSpacing.horizontalSpacing8,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: AppSize.s14,
                                    width: double.maxFinite,
                                    color: kWhiteColor,
                                  ),
                                  AppSpacing.verticalSpacing8,
                                  Container(
                                    height: AppSize.s14,
                                    width: double.maxFinite,
                                    color: kWhiteColor,
                                  ),
                                  AppSpacing.verticalSpacing8,
                                  Container(
                                    height: AppSize.s14,
                                    width: double.maxFinite,
                                    color: kWhiteColor,
                                  ),
                                  AppSpacing.verticalSpacing8,
                                  Container(
                                    height: AppSize.s14,
                                    width: double.maxFinite,
                                    color: kWhiteColor,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }else{
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: kWhiteColor,
                            radius: 30,
                            backgroundImage: NetworkImage("https://source.unsplash.com/random?sig=1"),
                          ),
                          AppSpacing.horizontalSpacing8,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "john Wick",
                                  style: getRegularStyle(color: kTextBlackColor),
                                ),
                                AppSpacing.verticalSpacing8,
                                Text(
                                  "Who killed my dog?",
                                  style: getRegularStyle(color: kTextBlackColor),
                                ),
                                AppSpacing.verticalSpacing8,
                                Text(
                                  "Who stole my car?",
                                  style: getRegularStyle(color: kTextBlackColor),
                                ),
                                AppSpacing.verticalSpacing8,
                                Text(
                                  "I will kill them all.",
                                  style: getRegularStyle(color: kTextBlackColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
            /*Shimmer.fromColors(
              baseColor: k707070.withOpacity(0.3),
              highlightColor: k707070.withOpacity(0.1),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: kWhiteColor,
                    radius: 30,
                  ),
                  AppSpacing.horizontalSpacing8,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: AppSize.s14,
                          width: double.maxFinite,
                          color: kWhiteColor,
                        ),
                        AppSpacing.verticalSpacing8,
                        Container(
                          height: AppSize.s14,
                          width: double.maxFinite,
                          color: kWhiteColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
