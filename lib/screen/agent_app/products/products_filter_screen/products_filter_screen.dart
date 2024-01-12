import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/helper_widget.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../../core/widgets/custom_drop_down.dart';
import '../../../../core/widgets/forms/form_field_wrapper.dart';
import '../../../../core/widgets/forms/k_text_field.dart';
import '../../../../data/data_list.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';
import '../products_widgets/products_button_widget.dart';

class ProductsFilterScreen extends StatefulWidget {
  const ProductsFilterScreen({super.key});

  @override
  State<ProductsFilterScreen> createState() => _ProductsFilterScreenState();
}

class _ProductsFilterScreenState extends State<ProductsFilterScreen> {
  String selectedShippingType = "Please Select";
  String selectedWareHouse = "Please Select";
  String selectedProductName = "Please Select";
  String selectedProductCategory = "Please Select";
  String selectedShippingNumber = "Please Select";
  String selectedProductStatus = "Please Select";
  final TextEditingController _trackingNumberTEController =
      TextEditingController();
  final OverlayPortalController _shippingTypeOverlayController =
      OverlayPortalController();
  final OverlayPortalController _wareOverlayController =
      OverlayPortalController();
  final OverlayPortalController _productNameOverlayController =
      OverlayPortalController();
  final OverlayPortalController _productCategoryOverlayController =
      OverlayPortalController();
  final OverlayPortalController _shipmentNumberOverlayController =
      OverlayPortalController();
  final OverlayPortalController _productStatusOverlayController =
      OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppRadius.r24),
          topRight: Radius.circular(AppRadius.r24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.filter_alt_sharp,
                  size: AppSize.s18,
                  color: kBlackColor,
                ),
                AppSpacing.horizontalSpacing8,
                Text(
                  "Filter",
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
            AppSpacing.verticalSpacing16,
            Flexible(
              child: SingleChildScrollView(
                /*padding: const EdgeInsets.all(AppPadding.p24),*/
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: 'Tracking number',
                      color: kTextBlackColor,
                      isRequired: false,
                      child: KTextField(
                        controller: _trackingNumberTEController,
                        keyboardType: TextInputType.text,
                        prefixIcon:
                            const Icon(Icons.search, size: 20, color: k707070),
                        hintText: "Search by tracking number",
                        hintColor: k707070,
                      ),
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: 'Shipping type',
                      color: kTextBlackColor,
                      isRequired: false,
                      child: CustomDropDown(
                        controller: _shippingTypeOverlayController,
                        selectedValue: selectedShippingType,
                        isExpanded: false,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0.0),
                          itemCount: shippingTypes.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: InkWell(
                                onTap: () {
                                  selectedShippingType = shippingTypes[index];
                                  _shippingTypeOverlayController.toggle();
                                  setState(() {});
                                },
                                child: Text(shippingTypes[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: 'Warehouse',
                      color: kTextBlackColor,
                      isRequired: false,
                      child: CustomDropDown(
                        controller: _wareOverlayController,
                        selectedValue: selectedWareHouse,
                        isExpanded: false,
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0.0),
                          children: wareHouses
                              .map((wareHouse) => Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: InkWell(
                                      onTap: () {
                                        selectedWareHouse = wareHouse;
                                        _wareOverlayController.toggle();
                                        setState(() {});
                                      },
                                      child: Text(wareHouse),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: 'Product name',
                      color: kTextBlackColor,
                      isRequired: false,
                      child: CustomDropDown(
                        controller: _productNameOverlayController,
                        selectedValue: selectedProductName,
                        isExpanded: false,
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0.0),
                          children: productsNames
                              .map((productsName) => Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: InkWell(
                                      onTap: () {
                                        selectedProductName = productsName;
                                        _productNameOverlayController.toggle();
                                        setState(() {});
                                      },
                                      child: Text(productsName),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: 'Product category',
                      color: kTextBlackColor,
                      isRequired: false,
                      child: CustomDropDown(
                        controller: _productCategoryOverlayController,
                        selectedValue: selectedProductCategory,
                        isExpanded: false,
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0.0),
                          children: productsCategories
                              .map((productsCategory) => Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: InkWell(
                                      onTap: () {
                                        selectedProductCategory =
                                            productsCategory;
                                        _productCategoryOverlayController
                                            .toggle();
                                        setState(() {});
                                      },
                                      child: Text(productsCategory),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: 'Shipment number',
                      color: kTextBlackColor,
                      isRequired: false,
                      child: CustomDropDown(
                        controller: _shipmentNumberOverlayController,
                        selectedValue: selectedShippingNumber,
                        isExpanded: false,
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(0.0),
                          children: shipmentNumbers
                              .map((shipmentNumber) => Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: InkWell(
                                      onTap: () {
                                        selectedShippingNumber = shipmentNumber;
                                        _shipmentNumberOverlayController.toggle();
                                        setState(() {});
                                      },
                                      child: Text(shipmentNumber),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: 'Product status',
                      color: kTextBlackColor,
                      isRequired: false,
                      child: CustomDropDown(
                        controller: _productStatusOverlayController,
                        selectedValue: selectedProductStatus,
                        isExpanded: false,
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(0.0),
                          itemCount: productStatus.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: InkWell(
                                onTap: () {
                                  selectedProductStatus = productStatus[index];
                                  _productStatusOverlayController.toggle();
                                  setState(() {});
                                },
                                child: Text(productStatus[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    AppSpacing.verticalSpacing24,
                    addH(100),
                  ],
                ),
              ),
            ),
            Container(
              height: 72,
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p24,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.outer,
                    color: kBlackColor.withOpacity(0.04),
                    offset: const Offset(4, -2),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "All Filters clear",
                      style: getMediumStyle(color: kBadgeColor),
                    ),
                  ),
                  AppSpacing.horizontalSpacing24,
                  ProductsButtonWidget(
                    btnHeight: AppSize.s46,
                    btnWidth: AppSize.s140,
                    onPressed: () {},
                    btnBgColor: k008454,
                    btnBorderRadius: AppRadius.r4,
                    child: Text(
                      "Apply Filters",
                      maxLines: 1,
                      style: getMediumStyle(color: kWhiteColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
