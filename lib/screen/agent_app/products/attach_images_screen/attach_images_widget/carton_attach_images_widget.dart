import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_image.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../../../core/widgets/headline_2.dart';
import '../../../../../utility/constants/app_spacing.dart';
import '../../../../../utility/constants/asset_manger.dart';
import '../../../../../utility/constants/colors.dart';
import '../../../../../utility/constants/font_manager.dart';
import '../../../../../utility/constants/values_manager.dart';

class CartonAttachImagesWidget extends StatefulWidget {
  const CartonAttachImagesWidget({
    super.key,
  });

  @override
  State<CartonAttachImagesWidget> createState() =>
      _CartonAttachImagesWidgetState();
}

class _CartonAttachImagesWidgetState extends State<CartonAttachImagesWidget> {
  bool selectValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              ImageAssets.boxPng,
              height: AppSize.s20,
              width: AppSize.s20,
              fit: BoxFit.fill,
            ),
            AppSpacing.horizontalSpacing8,
            const HeadLine2(
              text: "Carton 1",
              textColor: kTextBlackColor,
              fontSize: FontSize.s16,
              fontWeight: FontWeightManager.bold,
            ),
          ],
        ),
        AppSpacing.verticalSpacing16,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: AppPadding.p18,
              width: AppPadding.p18,
              child: Checkbox(
                value: selectValue,
                onChanged: (value) {
                  selectValue = value!;
                  setState(() {});
                },
                activeColor: kBaseColor,
                splashRadius: 0,
                side: const BorderSide(color: kDDDDDD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.r2),
                ),
              ),
            ),
            AppSpacing.horizontalSpacing8,
            Text(
              "Copy to all Carton",
              style: getRegularStyle(color: k707070),
            ),
          ],
        ),
        AppSpacing.verticalSpacing16,
        DottedBorder(
          borderType: BorderType.RRect,
          color: kDDDDDD,
          radius: const Radius.circular(AppRadius.r6),
          dashPattern: const [8, 6],
          child: Container(
            height: 150,
            width: double.maxFinite,
            decoration: const BoxDecoration(color: kF8F8F8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageAssets.uploadPng,
                      color: k006BFF,
                      height: 22,
                      width: 22,
                    ),
                    AppSpacing.horizontalSpacing8,
                    Text(
                      "Upload images",
                      style: getRegularStyle(color: k006BFF),
                    )
                  ],
                ),
                AppSpacing.verticalSpacing10,
                Text(
                  "(Only JPEG, PNG, PDF files max 5mb)",
                  style: getRegularStyle(color: k6B717A),
                ),
              ],
            ),
          ),
        ),
        AppSpacing.verticalSpacing18,
        SizedBox(
          height: 66,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: AppPadding.p8, right: AppPadding.p8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: CustomImage(
                        imgUrl: "https://source.unsplash.com/random?sig=0",
                        borderRadius: 6,
                        imgHeight: 64,
                        imgWidth: 64,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3,
                    top: 3,
                    child: InkWell(
                      onTap:(){},
                      child: const CircleAvatar(
                        backgroundColor: kBadgeColor,
                        radius: AppRadius.r8,
                        child: Icon(
                          Icons.close,
                          size: AppSize.s8,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
