import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';

import '../../../../../core/widgets/custom_drop_down.dart';
import '../../../../../core/widgets/forms/form_field_wrapper.dart';
import '../../../../../core/widgets/forms/k_text_field.dart';
import '../../../../../core/widgets/headline_2.dart';
import '../../../../../data/data_list.dart';
import '../../../../../utility/constants/asset_manger.dart';
import '../../../../../utility/constants/colors.dart';
import '../../../../../utility/constants/font_manager.dart';
import '../../../../../utility/constants/style_manager.dart';
import '../../../../../utility/constants/values_manager.dart';
import '../../products_widgets/products_button_widget.dart';

class CartonMeasurementWidget extends StatefulWidget {
  const CartonMeasurementWidget({super.key});

  @override
  State<CartonMeasurementWidget> createState() =>
      _CartonMeasurementWidgetState();
}

class _CartonMeasurementWidgetState extends State<CartonMeasurementWidget> {
  String selectedGrossWeightValue = "kil";

  String selectedValue = "cm";
  String selectedLengthValue = "cm";
  String selectedWidthValue = "cm";
  String selectedHeightValue = "cm";
  String selectedCBMValue = "cm";

  final TextEditingController _grossWeightTEController =
      TextEditingController();
  final TextEditingController _cbmTEController = TextEditingController();
  final TextEditingController _lengthTEController = TextEditingController();
  final TextEditingController _widthTEController = TextEditingController();
  final TextEditingController _heightTEController = TextEditingController();

  final OverlayPortalController _cbmOverlayController =
      OverlayPortalController();
  final OverlayPortalController _grossWightOverlayController =
      OverlayPortalController();
  final OverlayPortalController _lengthOverlayController =
      OverlayPortalController();
  final OverlayPortalController _widthOverlayController =
      OverlayPortalController();
  final OverlayPortalController _heightOverlayController =
      OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 345,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.r6),
          border: Border.all(color: kD9D9D9)),
      child: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            color: kEEEEEE,
            child: Row(
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
                const Spacer(),
                ProductsButtonWidget(
                  btnHeight: AppSize.s40,
                  onPressed: () {
                    print(_grossWeightTEController.text);
                    setState(() {});
                  },
                  btnBgColor: k008454,
                  btnBorderRadius: AppRadius.r6,
                  child: Text(
                    "Submit",
                    style: getSemiBoldStyle(color: kWhiteColor),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 283,
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16, vertical: AppPadding.p16),
            color: kF8F8F8,
            child: Column(
              children: [
                FormFieldWrapper(
                  label: "Gross Weight",
                  isRequired: false,
                  color: kTextBlackColor,
                  fontWeight: FontWeightManager.regular,
                  fontSize: FontSize.s14,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: kWhiteColor),
                    child: KTextField(
                      controller: _grossWeightTEController,
                      keyboardType: TextInputType.number,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      suffixIcon: SizedBox(
                        height: 28,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const VerticalDivider(
                                color: kD9D9D9,
                                width: 0,
                                indent: 10,
                                endIndent: 10),
                            CustomDropDown2(
                              borderColor: kTransparent,
                              controller: _grossWightOverlayController,
                              selectedValue: selectedGrossWeightValue,
                              isExpanded: false,
                              child: ListView(
                                shrinkWrap: true,
                                children: grossWeights
                                    .map(
                                      (grossWeight) => Padding(
                                        padding: const EdgeInsets.only(
                                          left: AppPadding.p8,
                                          top: AppPadding.p8,
                                          bottom: AppPadding.p8,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            selectedGrossWeightValue =
                                                grossWeight;
                                            _grossWightOverlayController
                                                .toggle();
                                            setState(() {});
                                          },
                                          child: Text(grossWeight),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                AppSpacing.verticalSpacing16,
                Row(
                  children: [
                    Expanded(
                      child: FormFieldWrapper(
                        label: "Length",
                        isRequired: false,
                        color: kTextBlackColor,
                        fontWeight: FontWeightManager.regular,
                        fontSize: FontSize.s14,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(color: kWhiteColor),
                          child: KTextField(
                            controller: _lengthTEController,
                            keyboardType: TextInputType.number,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            suffixIcon: SizedBox(
                              height: 28,
                              width: 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const VerticalDivider(
                                      color: kD9D9D9,
                                      width: 0,
                                      indent: 10,
                                      endIndent: 10),
                                  CustomDropDown2(
                                    borderColor: kTransparent,
                                    controller: _lengthOverlayController,
                                    selectedValue: selectedLengthValue,
                                    isExpanded: false,
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: lengths
                                          .map(
                                            (length) => Padding(
                                              padding: const EdgeInsets.only(
                                                left: AppPadding.p8,
                                                top: AppPadding.p8,
                                                bottom: AppPadding.p8,
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  selectedLengthValue = length;
                                                  _lengthOverlayController
                                                      .toggle();
                                                  setState(() {});
                                                },
                                                child: Text(length),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AppSpacing.horizontalSpacing8,
                    Expanded(
                      child: FormFieldWrapper(
                        label: "Width",
                        isRequired: false,
                        color: kTextBlackColor,
                        fontWeight: FontWeightManager.regular,
                        fontSize: FontSize.s14,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(color: kWhiteColor),
                          child: KTextField(
                            controller: _widthTEController,
                            keyboardType: TextInputType.number,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                            suffixIcon: SizedBox(
                              height: 28,
                              width: 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const VerticalDivider(
                                      color: kD9D9D9,
                                      width: 0,
                                      indent: 10,
                                      endIndent: 10),
                                  CustomDropDown2(
                                    borderColor: kTransparent,
                                    controller: _widthOverlayController,
                                    selectedValue: selectedWidthValue,
                                    isExpanded: false,
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: widths
                                          .map(
                                            (width) => Padding(
                                              padding: const EdgeInsets.only(
                                                left: AppPadding.p8,
                                                top: AppPadding.p8,
                                                bottom: AppPadding.p8,
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  selectedWidthValue = width;
                                                  _widthOverlayController
                                                      .toggle();
                                                  setState(() {});
                                                },
                                                child: Text(width),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AppSpacing.horizontalSpacing8,
                    Expanded(
                      child: FormFieldWrapper(
                        label: "Height",
                        isRequired: false,
                        color: kTextBlackColor,
                        fontWeight: FontWeightManager.regular,
                        fontSize: FontSize.s14,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(color: kWhiteColor),
                          child: KTextField(
                            controller: _heightTEController,
                            keyboardType: TextInputType.number,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            suffixIcon: SizedBox(
                              height: 28,
                              width: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const VerticalDivider(
                                      color: kD9D9D9,
                                      width: 0,
                                      indent: 10,
                                      endIndent: 10),
                                  CustomDropDown2(
                                    borderColor: kTransparent,
                                    controller: _heightOverlayController,
                                    selectedValue: selectedHeightValue,
                                    isExpanded: false,
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: heights
                                          .map(
                                            (height) => Padding(
                                              padding: const EdgeInsets.only(
                                                left: AppPadding.p8,
                                                top: AppPadding.p8,
                                                bottom: AppPadding.p8,
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  selectedHeightValue = height;
                                                  _heightOverlayController
                                                      .toggle();
                                                  setState(() {});
                                                },
                                                child: Text(height),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppSpacing.verticalSpacing16,
                FormFieldWrapper(
                  label: "or CBM",
                  isRequired: false,
                  color: kTextBlackColor,
                  fontWeight: FontWeightManager.regular,
                  fontSize: FontSize.s14,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(color: kWhiteColor),
                    child: KTextField(
                      controller: _cbmTEController,
                      keyboardType: TextInputType.number,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                      suffixIcon: SizedBox(
                        height: 28,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const VerticalDivider(
                                color: kD9D9D9,
                                width: 0,
                                indent: 10,
                                endIndent: 10),
                            CustomDropDown2(
                              borderColor: kTransparent,
                              controller: _cbmOverlayController,
                              selectedValue: selectedCBMValue,
                              isExpanded: false,
                              child: ListView(
                                shrinkWrap: true,
                                children: cbms
                                    .map(
                                      (cbm) => Padding(
                                        padding: const EdgeInsets.only(
                                          left: AppPadding.p8,
                                          top: AppPadding.p8,
                                          bottom: AppPadding.p8,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            selectedCBMValue = cbm;
                                            _cbmOverlayController.toggle();
                                            setState(() {});
                                          },
                                          child: Text(cbm),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Expended extends StatefulWidget {
  const Expended({super.key});

  @override
  State<Expended> createState() => _ExpendedState();
}

class _ExpendedState extends State<Expended> {
  String selectedGrossWeightValue = "kil";
  final OverlayPortalController _grossWightOverlayController =
      OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 20,
        width: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const VerticalDivider(
              color: kD9D9D9,
              width: 0,
              indent: 10,
              endIndent: 10,
            ),
            CustomDropDown2(
              controller: _grossWightOverlayController,
              selectedValue: selectedGrossWeightValue,
              borderColor: kTransparent,
              isExpanded: false,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                children: grossWeights
                    .map((grossWeight) => Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: InkWell(
                            onTap: () {
                              selectedGrossWeightValue = grossWeight;
                              _grossWightOverlayController.toggle();
                              setState(() {});
                            },
                            child: Text(grossWeight),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
