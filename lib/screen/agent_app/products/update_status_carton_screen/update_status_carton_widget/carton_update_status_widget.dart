import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_drop_down.dart';
import 'package:training_moveon/data/data_list.dart';

import '../../../../../core/widgets/forms/form_field_wrapper.dart';
import '../../../../../core/widgets/forms/k_text_field.dart';
import '../../../../../core/widgets/headline_2.dart';
import '../../../../../utility/constants/app_spacing.dart';
import '../../../../../utility/constants/asset_manger.dart';
import '../../../../../utility/constants/colors.dart';
import '../../../../../utility/constants/font_manager.dart';
import '../../../../../utility/constants/style_manager.dart';
import '../../../../../utility/constants/values_manager.dart';

class CartonUpdateStatusWidget extends StatefulWidget {
  const CartonUpdateStatusWidget({super.key});

  @override
  State<CartonUpdateStatusWidget> createState() =>
      _CartonUpdateStatusWidgetState();
}

class _CartonUpdateStatusWidgetState extends State<CartonUpdateStatusWidget> {
  String selectedShipmentNumberValue = "";
  bool isValueSelected = false;
  bool isDescriptionExpanded = false;
  final TextEditingController _cartonItemsTEController =
      TextEditingController();
  final TextEditingController _cartonNumberTEController =
      TextEditingController();
  final TextEditingController _shipmentNumberTEController =
      TextEditingController();
  final OverlayPortalController _shipmentNumberOverlayController =
      OverlayPortalController();
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isValueSelected ? k1DBF73.withOpacity(0.08) : kWhiteColor,
        border: Border.all(color: isValueSelected ? kTransparent : kDDDDDD),
        borderRadius: BorderRadius.circular(AppRadius.r6),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: AppPadding.p16,
          left: AppPadding.p16,
          right: AppPadding.p16,
          top: AppPadding.p22,
        ),
        child: Column(
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
                  text: "Carton no. 1",
                  textColor: kTextBlackColor,
                  fontSize: FontSize.s16,
                  fontWeight: FontWeightManager.bold,
                ),
                const Spacer(),
                Container(
                  height: AppSize.s32,
                  width: AppSize.s120,
                  decoration: BoxDecoration(
                      color: isValueSelected ? k008454 : kTransparent,
                      borderRadius: BorderRadius.circular(AppRadius.r20),
                      border: Border.all(color: kDDDDDD)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: AppSize.s18,
                        width: AppSize.s18,
                        child: Checkbox(
                          value: isValueSelected,
                          onChanged: (value) {
                            isValueSelected = value!;
                            setState(() {});
                          },
                          activeColor: k008454,
                          splashRadius: 0,
                          side: const BorderSide(color: kDDDDDD),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.r2),
                          ),
                        ),
                      ),
                      AppSpacing.horizontalSpacing8,
                      Text(
                        isValueSelected ? "Received" : "Receive",
                        style: getSemiBoldStyle(
                            color: isValueSelected ? kWhiteColor : k707070,
                            fontSize: FontSize.s16),
                      )
                    ],
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing12,
            const Description(),
            AppSpacing.verticalSpacing16,
            Row(
              children: [
                Expanded(
                  child: FormFieldWrapper(
                    label: "Carton items",
                    color: kTextBlackColor,
                    fontWeight: FontWeightManager.semiBold,
                    fontSize: FontSize.s16,
                    isRequired: false,
                    child: KTextField(
                      controller: _cartonItemsTEController,
                      keyboardType: TextInputType.number,
                      suffixIcon: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p10),
                          child: Text(
                            "/25",
                            style: getRegularStyle(
                              color: kTextBlackColor,
                              fontSize: FontSize.s16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                AppSpacing.horizontalSpacing16,
                Expanded(
                  child: FormFieldWrapper(
                    label: "Carton Number",
                    color: kTextBlackColor,
                    fontWeight: FontWeightManager.semiBold,
                    fontSize: FontSize.s16,
                    isRequired: false,
                    child: KTextField(
                      controller: _cartonNumberTEController,
                      keyboardType: TextInputType.number,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: AppPadding.p14,
                        horizontal: AppPadding.p10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FormFieldWrapper(
              label: 'Shipment Number',
              isRequired: false,
              child: KTextField(
                controller: _shipmentNumberTEController,
                suffixIcon: SizedBox(
                  width: 110,
                  child: CustomDropDown2(
                    controller: _shipmentNumberOverlayController,
                    selectedValue: selectedShipmentNumberValue,
                    borderColor: kTransparent,
                    isExpanded: false,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: shipmentNumber.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: AppPadding.p8,
                            left: AppPadding.p8,
                            bottom: AppPadding.p8,
                          ),
                          child: Text(shipmentNumber[index]),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            AppSpacing.verticalSpacing16,
          ],
        ),
      ),
    );
  }
}

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool isDescriptionExpanded = false;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.r6),
        color: isDescriptionExpanded ? kWhiteColor : kF5F5F5,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "Description: ",
                      style: getBoldStyle(
                        color: kTextBlackColor,
                        fontSize: FontSize.s16,
                      ),
                      children: [
                        isDescriptionExpanded
                            ? const TextSpan()
                            : TextSpan(
                                text: "Red, Blue, Green, Yellow & L, XL, XXL",
                                style: getRegularStyle(
                                  color: kTextBlackColor,
                                  fontSize: FontSize.s16,
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isDescriptionExpanded = !isDescriptionExpanded;
                    });
                  },
                  child: Icon(
                    isDescriptionExpanded
                        ? Icons.keyboard_arrow_up_sharp
                        : Icons.keyboard_arrow_down_sharp,
                    size: AppSize.s20,
                    color: k707070,
                  ),
                )
              ],
            ),
            AppSpacing.verticalSpacing12,
            isDescriptionExpanded
                ? ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    separatorBuilder: (context, index) =>
                        const Divider(color: kEEEEEE),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: AppPadding.p8),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppRadius.r8),
                              child: Image.network(
                                'https://source.unsplash.com/random?sig=0',
                                height: AppSize.s32,
                                width: AppSize.s32,
                                fit: BoxFit.fill,
                              ),
                            ),
                            AppSpacing.horizontalSpacing16,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Green, 16m ",
                                      style: getRegularStyle(
                                        color: k4D4D4D,
                                        fontSize: FontSize.s16,
                                      ),
                                    ),
                                    AppSpacing.horizontalSpacing16,
                                    Text(
                                      "Size: 36 ",
                                      style: getRegularStyle(
                                        color: k4D4D4D,
                                        fontSize: FontSize.s16,
                                      ),
                                    ),
                                  ],
                                ),
                                AppSpacing.verticalSpacing4,
                                Text(
                                  "Quantity: 150 pieces",
                                  style: getRegularStyle(
                                    color: k4D4D4D,
                                    fontSize: FontSize.s16,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
