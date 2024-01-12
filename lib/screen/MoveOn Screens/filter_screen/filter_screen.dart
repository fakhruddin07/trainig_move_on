import 'package:flutter/material.dart';
import '../../../utility/constants/app_spacing.dart';
import '../../../utility/constants/colors.dart';
import '../../../utility/constants/font_manager.dart';
import '../../../utility/constants/style_manager.dart';
import '../../../utility/constants/values_manager.dart';
import 'filter_widget/filter_section.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isExpanded = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppRadius.r24),
            topRight: Radius.circular(AppRadius.r24),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16, vertical: AppPadding.p20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.filter_alt_outlined,
                        size: AppPadding.p16,
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
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.close,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  FilterSection(title: "Categories", itemNumber: 6),
                  const Divider(color: kEEEEEE),
                  AppSpacing.verticalSpacing16,
                  FilterSection(title: "Price", isPriceWidgetShown: true),
                  AppSpacing.verticalSpacing16,
                  const Divider(color: kEEEEEE),
                  AppSpacing.verticalSpacing16,
                  FilterSection(title: "Shipping type", isIconShown: true),
                  const Divider(color: kEEEEEE),
                  AppSpacing.verticalSpacing16,
                  FilterSection(
                      title: "Country", itemNumber: 2, isIconShown: true),
                  const Divider(color: kEEEEEE),
                  AppSpacing.verticalSpacing16,
                  FilterSection(
                      title: "Destination Point",
                      itemNumber: 6,
                      isSearchBarShown: true),
                  const Divider(color: kEEEEEE),
                  AppSpacing.verticalSpacing16,
                  FilterSection(
                      title: "Review", itemNumber: 2, isRatingIconShown: true),
                ],
              ),
            ),
          ),
          Container(
            height: 72,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p24,
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                blurStyle: BlurStyle.outer,
                color: kBlackColor.withOpacity(0.04),
                offset: const Offset(4, -2),
              )
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    "Rest all",
                    style: getMediumStyle(color: kBadgeColor),
                  ),
                ),
                AppSpacing.horizontalSpacing24,
                SizedBox(
                  height: AppSize.s40,
                  width: AppSize.s100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kBaseColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppPadding.p4),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Apply",
                      style: getMediumStyle(color: kWhiteColor),
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
