import 'package:flutter/material.dart';
import 'package:training_moveon/screen/agent_app/products/update_status_carton_screen/update_status_carton_widget/carton_update_status_widget.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';
import '../../../../utility/constants/values_manager.dart';
import '../products_widgets/products_button_widget.dart';

class UpdateStatusOfCartonScreen extends StatefulWidget {
  const UpdateStatusOfCartonScreen({super.key});

  @override
  State<UpdateStatusOfCartonScreen> createState() =>
      _UpdateStatusOfCartonScreenState();
}

class _UpdateStatusOfCartonScreenState
    extends State<UpdateStatusOfCartonScreen> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(AppRadius.r24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16, vertical: AppPadding.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "Update Status of Carton (4)",
                  style: getBoldStyle(
                    color: kTextBlackColor,
                    fontSize: FontSize.s16,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  splashFactory: NoSplash.splashFactory,
                  splashColor: kTransparent,
                  child: const Icon(
                    Icons.close,
                    size: AppSize.s20,
                    color: kBlackColor,
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing18,
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: AppPadding.p24),
                    child: CartonUpdateStatusWidget(),
                  );
                },
              ),
            ),
            ProductsButtonWidget(
              btnHeight: AppSize.s46,
              btnWidth: double.maxFinite,
              onPressed: () {},
              btnBgColor: k008454,
              btnBorderRadius: AppRadius.r4,
              child: Text(
                "Submit All",
                style: getSemiBoldStyle(color: kWhiteColor),
              ),
            ),
            /*DecoratedBox(
              decoration: BoxDecoration(
                color:
                    isValueSelected ? k1DBF73.withOpacity(0.08) : kWhiteColor,
                border:
                    Border.all(color: isValueSelected ? kTransparent : kDDDDDD),
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
                              borderRadius:
                                  BorderRadius.circular(AppRadius.r20),
                              border: Border.all(color: kDDDDDD)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: AppPadding.p18,
                                width: AppPadding.p18,
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
                                    borderRadius:
                                        BorderRadius.circular(AppRadius.r2),
                                  ),
                                ),
                              ),
                              AppSpacing.horizontalSpacing8,
                              Text(
                                isValueSelected ? "Received" : "Receive",
                                style: getSemiBoldStyle(
                                    color:
                                        isValueSelected ? kWhiteColor : k707070,
                                    fontSize: FontSize.s16),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing12,
                    SizedBox(
                      height: 60,
                      width: double.maxFinite,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isDescriptionExpanded ? kWhiteColor : kF5F5F5,
                          borderRadius: BorderRadius.circular(AppRadius.r6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.topLeft,
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
                                                      text: "Red, Blue, Green, "
                                                          "Yellow & L, XL, XXL",
                                                      style: getRegularStyle(
                                                        color: kTextBlackColor,
                                                        fontSize: FontSize.s16,
                                                      ),
                                                    )
                                            ]),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isDescriptionExpanded =
                                            !isDescriptionExpanded;
                                      });
                                    },
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Icon(
                                        isDescriptionExpanded
                                            ? Icons.keyboard_arrow_up_sharp
                                            : Icons.keyboard_arrow_down_sharp,
                                        size: AppSize.s20,
                                        color: k707070,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              isDescriptionExpanded
                                  ? Expanded(
                                      child: ListView.separated(
                                        shrinkWrap: true,
                                        itemCount: 2,
                                        padding: const EdgeInsets.only(top: 12),
                                        separatorBuilder: (context, index) =>
                                            const Divider(color: kEEEEEE),
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          AppRadius.r8),
                                                  child: Image.network(
                                                    'https://source.unsplash.com/random?sig=0',
                                                    height: AppSize.s32,
                                                    width: AppSize.s32,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                AppSpacing.horizontalSpacing16,
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Green, 16m ",
                                                          style:
                                                              getRegularStyle(
                                                            color: k4D4D4D,
                                                            fontSize:
                                                                FontSize.s16,
                                                          ),
                                                        ),
                                                        AppSpacing
                                                            .horizontalSpacing16,
                                                        Text(
                                                          "Size: 36 ",
                                                          style:
                                                              getRegularStyle(
                                                            color: k4D4D4D,
                                                            fontSize:
                                                                FontSize.s16,
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
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
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
                              suffix: Text(
                                "/25",
                                style: getRegularStyle(
                                  color: kTextBlackColor,
                                  fontSize: FontSize.s16,
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
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: "Shipment Number",
                      color: kTextBlackColor,
                      fontWeight: FontWeightManager.semiBold,
                      fontSize: FontSize.s16,
                      isRequired: false,
                      child: KTextField(
                        controller: _shipmentNumberTEController,
                        keyboardType: TextInputType.number,
                        suffix: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: AppSize.s20,
                          color: k707070,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
