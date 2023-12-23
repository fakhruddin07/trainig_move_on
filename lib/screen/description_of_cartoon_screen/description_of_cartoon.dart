import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';
import 'package:training_moveon/core/widgets/helper_widget.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../core/widgets/forms/form_field_wrapper.dart';
import '../../data/cartoon_item_description.dart';
import '../../utility/helpers/validator_logic.dart';

class DescriptionOfCartoon extends StatefulWidget {
  const DescriptionOfCartoon({super.key});

  @override
  State<DescriptionOfCartoon> createState() => _DescriptionOfCartoonState();
}

class _DescriptionOfCartoonState extends State<DescriptionOfCartoon> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _colorTEController = TextEditingController();
  final TextEditingController _sizeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();

  List<CartoonItemDescription> cartoonItemList = [];

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppRadius.r24),
          topLeft: Radius.circular(AppRadius.r24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16, vertical: AppPadding.p20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.white,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  constraints: const BoxConstraints(),
                  icon: Icon(
                    Icons.close,
                    size: AppSize.s14,
                    color: kBlackColor.withOpacity(0.7),
                  ),
                ),
              ),
              AppSpacing.verticalSpacing2,
              Text(
                "Description of Cartoon 1",
                style: getBoldStyle(
                    color: kTextBlackColor, fontSize: FontSize.s16),
              ),
              AppSpacing.verticalSpacing16,
              FormFieldWrapper(
                label: 'Color',
                isRequired: false,
                fontWeight: FontWeightManager.bold,
                color: kTextBlackColor,
                child: KTextField(
                  controller: _colorTEController,
                  hintText: 'Type Color',
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  suffixIcon: const SizedBox(
                    width: 2,
                  ),
                  validator: (text) =>
                      ValidatorLogic.requiredField(text, fieldName: 'Color'),
                ),
              ),
              AppSpacing.verticalSpacing16,
              Row(
                children: [
                  Expanded(
                    child: FormFieldWrapper(
                      label: 'Size',
                      isRequired: false,
                      fontWeight: FontWeightManager.bold,
                      color: kTextBlackColor,
                      child: KTextField(
                        controller: _sizeTEController,
                        hintText: 'Type Size',
                        keyboardType: TextInputType.number,
                        inputAction: TextInputAction.next,
                        suffixIcon: const SizedBox(
                          width: 2,
                        ),
                        validator: (text) => ValidatorLogic.requiredInteger(
                            text,
                            fieldName: 'Size'),
                      ),
                    ),
                  ),
                  AppSpacing.horizontalSpacing16,
                  Expanded(
                    child: FormFieldWrapper(
                      label: 'Quantity',
                      isRequired: false,
                      fontWeight: FontWeightManager.bold,
                      color: kTextBlackColor,
                      child: KTextField(
                        controller: _quantityTEController,
                        hintText: 'Type Quantity',
                        keyboardType: TextInputType.number,
                        inputAction: TextInputAction.done,
                        suffixIcon: const SizedBox(
                          width: 2,
                        ),
                        validator: (text) => ValidatorLogic.requiredInteger(
                            text,
                            fieldName: 'Quantity'),
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpacing24,
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      cartoonItemList.add(
                        CartoonItemDescription(
                          color: _colorTEController.text.trim(),
                          size: _sizeTEController.text.trim(),
                          quantity: _quantityTEController.text.trim(),
                        ),
                      );
                      _colorTEController.clear();
                      _sizeTEController.clear();
                      _quantityTEController.clear();
                    }
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kWhiteColor,
                    elevation: 0,
                    enableFeedback: false,
                    shadowColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: kDDDDDD,
                      ),
                      borderRadius: BorderRadius.circular(AppRadius.r6),
                    ),
                  ),
                  child: Text(
                    "+ Add more",
                    style: getMediumStyle(color: k4D4D4D),
                  ),
                ),
              ),
              AppSpacing.verticalSpacing24,
              Container(
                height: AppSize.s46,
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppRadius.r6),
                  color: kEEEEEE,
                  // border: Border.all(color: )
                ),
                child: Row(
                  children: [
                    headingTextWidget(headingTitle: "Color"),
                    const Spacer(),
                    headingTextWidget(headingTitle: "Size"),
                    const Spacer(),
                    headingTextWidget(headingTitle: "Quantity"),
                  ],
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      cartoonItemList.isNotEmpty
                          ? ListView.separated(
                              shrinkWrap: true,
                              padding: const EdgeInsets.fromLTRB(
                                AppPadding.p24,
                                AppPadding.p16,
                                AppPadding.p16,
                                AppPadding.p16,
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) =>
                                  const Divider(color: kDDDDDD),
                              itemCount: cartoonItemList.length,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    itemDetailsTextWidgets(
                                        detailsText:
                                            cartoonItemList[index].color),
                                    const Spacer(),
                                    itemDetailsTextWidgets(
                                        detailsText:
                                            cartoonItemList[index].size),
                                    const Spacer(),
                                    itemDetailsTextWidgets(
                                        detailsText:
                                            cartoonItemList[index].quantity),
                                    AppSpacing.horizontalSpacing34,
                                    IconButton(
                                      onPressed: () {
                                        cartoonItemList
                                            .remove(cartoonItemList[index]);
                                        setState(() {});
                                      },
                                      style: IconButton.styleFrom(
                                        splashFactory: NoSplash.splashFactory,
                                        padding: EdgeInsets.zero,
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      constraints: const BoxConstraints(),
                                      icon: Icon(
                                        Icons.delete_outline,
                                        size: AppSize.s16,
                                        color: kBlackColor.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            )
                          : DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(color: kDDDDDD),
                                borderRadius:
                                    BorderRadius.circular(AppRadius.r4),
                              ),
                              child: SizedBox(
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Center(
                                    child: Text(
                                      "*No Description found. \n"
                                          "Please add your description.",
                                      textAlign: TextAlign.center,
                                      style: getBoldStyle(
                                        color: kTextBlackColor,
                                        fontSize: FontSize.s16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              cartoonItemList.length < 3 ? addH(100) : AppSpacing.verticalSpacing24,
              SizedBox(
                height: AppSize.s46,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBaseColor,
                    elevation: 0,
                    splashFactory: NoSplash.splashFactory,
                    surfaceTintColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.r6),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: getRegularStyle(color: kWhiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text itemDetailsTextWidgets({required String detailsText}) {
    return Text(
      detailsText,
      style: getRegularStyle(color: kTextBlackColor),
    );
  }

  Text headingTextWidget({required String headingTitle}) => Text(
        headingTitle,
        style: getBoldStyle(
          color: kTextBlackColor,
          fontSize: FontSize.s16,
        ),
      );
}
