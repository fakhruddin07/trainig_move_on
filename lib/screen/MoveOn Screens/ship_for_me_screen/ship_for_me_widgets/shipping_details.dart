import 'package:flutter/material.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/ship_for_me_screen/ship_for_me_widgets/widgets/custom_shipping_method_button.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../../core/widgets/custom_drop_down.dart';
import '../../../../core/widgets/forms/form_field_wrapper.dart';
import '../../../../data/data_list.dart';

class ShippingDetails extends StatefulWidget {
  const ShippingDetails({super.key});

  @override
  State<ShippingDetails> createState() => _ShippingDetailsState();
}

class _ShippingDetailsState extends State<ShippingDetails> {
  int btnIndex = 0;
  String selectedCountryValue = "Source Point";
  String selectedDistrictValue = "Destination Point";
  final OverlayPortalController _countryOverlayPortalController =
      OverlayPortalController();
  final OverlayPortalController _districtOverlayPortalController =
      OverlayPortalController();

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shipping Details",
            style: getBoldStyle(
              color: kTextBlackColor,
              fontSize: FontSize.s16,
            ),
          ),
          AppSpacing.verticalSpacing16,
          FormFieldWrapper(
            label: "From",
            isRequired: false,
            child: CustomDropDown(
              controller: _countryOverlayPortalController,
              selectedValue: selectedCountryValue,
              isExpanded: false,
              child: ListView(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                children: countryList
                    .map(
                      (country) => Padding(
                        padding: const EdgeInsets.all(AppPadding.p14),
                        child: InkWell(
                          onTap: () {
                            selectedCountryValue = country["name"];
                            _countryOverlayPortalController.toggle();
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(AppRadius.r6),
                                child: Image.asset(
                                  country["flag"],
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              AppSpacing.horizontalSpacing8,
                              Text(country["name"]),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          AppSpacing.verticalSpacing16,
          FormFieldWrapper(
            label: "To",
            isRequired: false,
            child: CustomDropDown(
              controller: _districtOverlayPortalController,
              selectedValue: selectedDistrictValue,
              isExpanded: false,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0.0),
                children: districtsList
                    .map(
                      (district) => Padding(
                        padding: const EdgeInsets.all(AppPadding.p14),
                        child: InkWell(
                          onTap: () {
                            selectedDistrictValue = district;
                            _districtOverlayPortalController.toggle();
                            setState(() {});
                          },
                          child: Text(district),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          AppSpacing.verticalSpacing24,
          Container(
            padding: const EdgeInsets.all(AppPadding.p2),
            height: 46,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: kEEEEEE,
              borderRadius: BorderRadius.circular(AppSize.s24),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShippingMethodButton(
                    orderType: "By Air",
                    isSelected: btnIndex == 0,
                    onTap: () => setBtn(0),
                  ),
                  CustomShippingMethodButton(
                    orderType: "By Ship",
                    isSelected: btnIndex == 1,
                    onTap: (() => setBtn(1)),
                  ),
                ]),
          ),
          AppSpacing.verticalSpacing16,
          Text(
            "Shipping type",
            style: getBoldStyle(
              color: kTextBlackColor,
              fontSize: FontSize.s16,
            ),
          ),
          AppSpacing.verticalSpacing16,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                },
                child: Container(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  margin: const EdgeInsets.only(bottom: AppMargin.m16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.r4),
                    color: selectedIndex == index ? kECFAF3 : kWhiteColor,
                    border: Border.all(
                        color: selectedIndex == index ? kBaseColor : kDDDDDD),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            alignment: Alignment.centerLeft,
                            ImageAssets.truckPng,
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          AppSpacing.horizontalSpacing10,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cargo",
                                style: getBoldStyle(
                                  color: kTextBlackColor,
                                  fontSize: FontSize.s16,
                                ),
                              ),
                              AppSpacing.verticalSpacing6,
                              Text(
                                "10 - 15 days",
                                style: getBoldStyle(
                                  color: kBaseColor,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Image.asset(
                                ImageAssets.customerServicePng,
                                fit: BoxFit.fill,
                                height: 24,
                                width: 24,
                              ),
                              AppSpacing.verticalSpacing2,
                              Text(
                                "25+ Agents",
                                style: getBoldStyle(
                                  color: kTextBlackColor,
                                  fontSize: FontSize.s12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      AppSpacing.verticalSpacing8,
                      const Text(
                        "data data data data data data data data data data data data data data data data data data data data data data data data ",
                        style: TextStyle(
                          color: k4D4D4D,
                          fontSize: FontSize.s14,
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: 0.1,
                          height: 1.4,
                        ),
                        maxLines: 2,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 46,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kEEEEEE,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.r4),
                      ),
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Text(
                      "Back",
                      style: getSemiBoldStyle(color: kTextBlackColor),
                    ),
                  ),
                ),
              ),
              AppSpacing.horizontalSpacing16,
              Expanded(
                child: SizedBox(
                  height: 46,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kBaseColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.r4),
                      ),
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Text(
                      "Next",
                      style: getRegularStyle(color: kWhiteColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpacing24
        ],
      ),
    );
  }

  void setBtn(int index) {
    setState(() {
      btnIndex = index;
    });
  }
}
