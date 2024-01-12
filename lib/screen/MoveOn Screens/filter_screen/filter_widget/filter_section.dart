import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';

import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/asset_manger.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';
import '../../../../utility/constants/values_manager.dart';
class FilterSection extends StatefulWidget {
  final String title;
  int? itemNumber;
  bool? isSearchBarShown;
  bool? isIconShown;
  bool? isRatingIconShown;
  bool? isPriceWidgetShown;
  FilterSection({
    super.key,
    required this.title,
    this.itemNumber = 3,
    this.isSearchBarShown = false,
    this.isIconShown = false,
    this.isRatingIconShown = false,
    this.isPriceWidgetShown = false,
  });

  @override
  State<FilterSection> createState() => _FilterSectionState();
}

class _FilterSectionState extends State<FilterSection> {
  final TextEditingController _destinationTEController =
      TextEditingController();
  final TextEditingController _minPriceTEController = TextEditingController();
  final TextEditingController _maxPriceTEController = TextEditingController();

  bool isExpanded = false;
  bool isChecked = false;
  bool selectValue = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: getBoldStyle(
                    color: kTextBlackColor, fontSize: FontSize.s16),
              ),
              InkWell(
                onTap: () {
                  isExpanded = !isExpanded;
                  setState(() {});
                },
                child: Icon(
                  isExpanded ? Icons.add : Icons.remove,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpacing16,
          isChecked == widget.isSearchBarShown
              ? const SizedBox()
              : KTextField(
                  controller: _destinationTEController,
                  hintText: "Search",
                  hintColor: kA0A0A0,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: AppSize.s14,
                    color: kA0A0A0,
                  ),
                ),
          isChecked == widget.isSearchBarShown
              ? const SizedBox()
              : AppSpacing.verticalSpacing16,
          isExpanded
              ? const SizedBox()
              : isChecked == widget.isPriceWidgetShown
                  ? ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.itemNumber,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(bottom: AppPadding.p16),
                          child: Row(
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
                                    borderRadius:
                                        BorderRadius.circular(AppRadius.r2),
                                  ),
                                ),
                              ),
                              AppSpacing.horizontalSpacing8,
                              isChecked == widget.isIconShown
                                  ? const SizedBox()
                                  : ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(AppRadius.r6),
                                      child: Image.asset(
                                        ImageAssets.manJpg,
                                        width: AppSize.s20,
                                        height: AppSize.s20,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                              isChecked == widget.isIconShown
                                  ? const SizedBox()
                                  : AppSpacing.horizontalSpacing8,
                              isChecked == widget.isRatingIconShown
                                  ? Text(
                                      "Footwear",
                                      style: getRegularStyle(
                                          color: kTextBlackColor,
                                          fontSize: FontSize.s16),
                                    )
                                  : Image.asset(
                                      ImageAssets.star,
                                      height: AppPadding.p14,
                                      width: AppPadding.p14,
                                    ),
                            ],
                          ),
                        );
                      },
                    )
                  : priceSectionWidget(),
          if (widget.itemNumber! > 5 && isExpanded == false)
            Text(
              "View more",
              style: getRegularStyle(
                color: kA0A0A0,
                fontSize: AppPadding.p16,
              ),
            )
          else
            const SizedBox(),
        ],
      ),
    );
  }

  /*Price Widget*/
  Row priceSectionWidget() {
    return Row(
      children: [
        Expanded(
          child: KTextField(
            controller: _minPriceTEController,
            hintText: "৳Min",
            keyboardType: TextInputType.number,
          ),
        ),
        AppSpacing.horizontalSpacing14,
        const SizedBox(
          height: 2,
          width: 12,
          child: DecoratedBox(decoration: BoxDecoration(color: kA0A0A0)),
        ),
        AppSpacing.horizontalSpacing14,
        Expanded(
          child: KTextField(
            controller: _maxPriceTEController,
            hintText: "৳Max",
            keyboardType: TextInputType.number,
          ),
        ),
        AppSpacing.horizontalSpacing14,
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.r4)),
              backgroundColor: kBlackColor,
              padding: const EdgeInsets.symmetric(
                vertical: AppPadding.p12,
                horizontal: AppPadding.p22,
              )),
          child: Text(
            "Apply",
            style: getMediumStyle(color: kWhiteColor),
          ),
        )
      ],
    );
  }
}
