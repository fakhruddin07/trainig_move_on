import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_drop_down.dart';
import 'package:training_moveon/data/data_list.dart';
import 'package:training_moveon/screen/agent_app/products/products_widgets/products_button_widget.dart';
import '../../../../core/widgets/headline_2.dart';
import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/asset_manger.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';
import '../../../../utility/constants/values_manager.dart';
import '../attach_images_screen/attach_images_screen.dart';
import '../measurements_screen/measurment_screen.dart';
import '../update_status_carton_screen/update_status_carton_screen.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  int selectedIndex = -1;
  String selectedMoreActionsValue = "More Options";
  bool isShown = false;
  final OverlayPortalController _moreActionsOverlayController =
      OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p16,
        vertical: AppPadding.p24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Product no: ",
                      style: getBoldStyle(color: kTextBlackColor),
                    ),
                    TextSpan(
                      text: "P1120270056",
                      style: getRegularStyle(color: kTextBlackColor),
                    ),
                  ],
                ),
              ),
              AppSpacing.horizontalSpacing4,
              const Icon(
                Icons.copy,
                size: AppSize.s14,
                color: kA0A0A0,
              ),
            ],
          ),
          AppSpacing.verticalSpacing12,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.r8),
                child: Image.network(
                  'https://source.unsplash.com/random?sig=0',
                  height: AppSize.s72,
                  width: AppSize.s72,
                  fit: BoxFit.fill,
                ),
              ),
              AppSpacing.horizontalSpacing16,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  productInfoWidget(
                      infoTitle: "Product category: ", infoDes: "Cycle"),
                  AppSpacing.verticalSpacing8,
                  Row(
                    children: [
                      productInfoWidget(
                          infoTitle: "Quantity: ", infoDes: "4 pieces,"),
                      AppSpacing.horizontalSpacing4,
                      productInfoWidget(infoTitle: "Weight: ", infoDes: "2kg"),
                    ],
                  ),
                  AppSpacing.verticalSpacing8,
                  Row(
                    children: [
                      productInfoWidget(infoTitle: "CBM: ", infoDes: ".02,"),
                      AppSpacing.horizontalSpacing4,
                      productInfoWidget(infoTitle: "Carton: ", infoDes: "3"),
                    ],
                  ),
                  AppSpacing.verticalSpacing8,
                  productInfoWidget(infoTitle: "Price: ", infoDes: "\$1000"),
                  AppSpacing.verticalSpacing6,
                  Row(
                    children: [
                      Text(
                        "Contains:",
                        style: getRegularStyle(color: kTextBlackColor),
                      ),
                      AppSpacing.horizontalSpacing8,
                      containWidget(
                        containTitle: "Copy",
                        bgColor: k18B25F,
                        titleColor: k18B25F,
                      ),
                      AppSpacing.horizontalSpacing8,
                      containWidget(
                        containTitle: "Battery",
                        bgColor: kBadgeColor,
                        titleColor: kBadgeColor,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          AppSpacing.verticalSpacing16,
          Row(
            children: [
              const HeadLine2(
                text: "Products",
                textColor: kTextBlackColor,
                fontSize: FontSize.s16,
                fontWeight: FontWeight.bold,
              ),
              AppSpacing.horizontalSpacing8,
              Image.asset(
                ImageAssets.truckPng,
                height: AppSize.s24,
                width: AppSize.s24,
                fit: BoxFit.fill,
              ),
            ],
          ),
          AppSpacing.verticalSpacing14,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              isShown
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Shipment no: ",
                                style: getRegularStyle(color: k707070),
                              ),
                              TextSpan(
                                text: "MVN5007A",
                                style: getRegularStyle(color: k000000),
                              ),
                            ],
                          ),
                        ),
                        AppSpacing.verticalSpacing8,
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Shipment type: ",
                                style: getRegularStyle(color: k707070),
                              ),
                              TextSpan(
                                text: "Air",
                                style: getRegularStyle(color: k000000),
                              ),
                            ],
                          ),
                        ),
                        AppSpacing.verticalSpacing8,
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Shipment mark: ",
                                style: getRegularStyle(color: k707070),
                              ),
                              TextSpan(
                                text: "Ali2BD/ACOG",
                                style: getRegularStyle(color: k000000),
                              ),
                            ],
                          ),
                        ),
                        AppSpacing.verticalSpacing8,
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Rate: ",
                                    style: getRegularStyle(color: k707070),
                                  ),
                                  TextSpan(
                                    text: "1050/kg",
                                    style: getRegularStyle(color: k000000),
                                  ),
                                ],
                              ),
                            ),
                            AppSpacing.horizontalSpacing8,
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: kBaseColor,
                                borderRadius:
                                    BorderRadius.circular(AppRadius.r12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppPadding.p10),
                                child: Text(
                                  "Kg with CBM",
                                  style: getSemiBoldStyle(color: kWhiteColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                        AppSpacing.verticalSpacing8,
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Estimated bill: ",
                                style: getRegularStyle(color: k707070),
                              ),
                              TextSpan(
                                text: "৳2000",
                                style: getRegularStyle(color: k000000),
                              ),
                            ],
                          ),
                        ),
                        AppSpacing.verticalSpacing8,
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Estimated profit: ",
                                style: getRegularStyle(color: k707070),
                              ),
                              TextSpan(
                                text: "৳350",
                                style: getRegularStyle(color: k000000),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Shipment no: ",
                            style: getRegularStyle(color: k707070),
                          ),
                          TextSpan(
                            text: "MVN5007A",
                            style: getRegularStyle(color: k000000),
                          ),
                        ],
                      ),
                    ),
              const Spacer(),
              InkWell(
                onTap: () {
                  setState(() {
                    isShown = !isShown;
                  });
                },
                splashFactory: NoSplash.splashFactory,
                child: Row(
                  children: [
                    Text(
                      isShown ? "Show less" : "Show more",
                      style: getRegularStyle(color: k707070),
                    ),
                    AppSpacing.horizontalSpacing2,
                    Icon(
                      isShown
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down_sharp,
                      size: AppSize.s16,
                    )
                  ],
                ),
              )
            ],
          ),
          AppSpacing.verticalSpacing16,
          const HeadLine2(
            text: "Tracking",
            textColor: kTextBlackColor,
            fontSize: FontSize.s16,
            fontWeight: FontWeight.bold,
          ),
          AppSpacing.verticalSpacing12,
          Container(
            height: AppSize.s32,
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            decoration: BoxDecoration(
              color: kE8F8EF,
              borderRadius: BorderRadius.circular(AppRadius.r6),
            ),
            child: Row(
              children: [
                Text(
                  "SNV202365",
                  style: getRegularStyle(color: k000000),
                ),
                AppSpacing.horizontalSpacing8,
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.copy,
                    size: AppSize.s14,
                    color: kA0A0A0,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.location_on_outlined,
                    size: AppSize.s14,
                    color: k0075D3,
                  ),
                ),
                AppSpacing.horizontalSpacing4,
                Text(
                  "View Tracking",
                  style: getRegularStyle(color: k0075D3),
                ),
              ],
            ),
          ),
          AppSpacing.verticalSpacing16,
          Row(
            children: [
              Text(
                "Status:",
                style: getRegularStyle(color: k4D4D4D, fontSize: FontSize.s16),
              ),
              AppSpacing.horizontalSpacing4,
              containWidget(
                containTitle: "Pending",
                bgColor: kFF9100,
                titleColor: kFF9100,
              ),
            ],
          ),
          AppSpacing.verticalSpacing24,
          Row(
            children: [
              Expanded(
                child: CustomDropDown2(
                  controller: _moreActionsOverlayController,
                  selectedValue: selectedMoreActionsValue,
                  isExpanded: false,
                  borderColor: kTransparent,
                  bgColor: kEEEEEE,
                  btnHeight: 40,
                  fontWeight: FontWeightManager.bold,
                  fontColor: kTextBlackColor,
                  mainAxisAlignment: MainAxisAlignment.center,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: moreActions.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: AppPadding.p8,
                          left: AppPadding.p8,
                          top: AppPadding.p8,
                        ),
                        child: InkWell(
                          onTap: () {
                            if (index == 0) {
                              showModalBottomSheet(
                                isDismissible: false,
                                enableDrag: false,
                                isScrollControlled: true,
                                useSafeArea: true,
                                context: context,
                                builder: (context) =>
                                    const UpdateStatusOfCartonScreen(),
                              );
                            } else if (index == 1) {
                              showModalBottomSheet(
                                backgroundColor: kWhiteColor,
                                useSafeArea: true,
                                isScrollControlled: true,
                                enableDrag: false,
                                isDismissible: false,
                                context: context,
                                builder: (context) =>
                                    const MeasurementScreen(),
                              );
                            } else if (index == 2) {
                              showModalBottomSheet(
                                backgroundColor: kWhiteColor,
                                useSafeArea: true,
                                isScrollControlled: true,
                                enableDrag: false,
                                isDismissible: false,
                                context: context,
                                builder: (context) => const AttachImages(),
                              );
                            } else if (index == 3) {
                            } else if (index == 4) {
                            } else if (index == 5) {
                            } else if (index == 6) {
                            } else {}
                            _moreActionsOverlayController.toggle();
                          },
                          child: Text(moreActions[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),
              AppSpacing.horizontalSpacing16,
              Expanded(
                child: ProductsButtonWidget(
                  btnHeight: AppSize.s40,
                  onPressed: () {},
                  btnBgColor: k008454,
                  btnBorderRadius: AppRadius.r6,
                  child: Text(
                    "Quick Update",
                    style: getBoldStyle(color: kWhiteColor),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  DecoratedBox containWidget({
    required String containTitle,
    required Color bgColor,
    required Color titleColor,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.r12),
        color: bgColor.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 2),
        child: Text(
          containTitle,
          style: getRegularStyle(color: titleColor),
        ),
      ),
    );
  }

  RichText productInfoWidget({
    required String infoTitle,
    required String infoDes,
  }) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: infoTitle,
            style: getRegularStyle(color: kTextBlackColor),
          ),
          TextSpan(
            text: infoDes,
            style: getBoldStyle(color: kTextBlackColor),
          ),
        ],
      ),
    );
  }
}
