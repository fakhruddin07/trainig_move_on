import 'package:flutter/material.dart';
import 'package:training_moveon/screen/filter_screen/filter_screen.dart';
import 'package:training_moveon/screen/items_screen/items.dart';
import 'package:training_moveon/screen/routes/routes_name.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';

import '../../common_widgets/button_widget.dart';
import '../../utility/constants/colors.dart';
import '../../utility/constants/font_manager.dart';
import '../../utility/constants/style_manager.dart';
import '../description_of_cartoon_screen/description_of_cartoon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "MoveOn Training",
          style: getBoldStyle(
            color: kTextBlackColor,
            fontSize: FontSize.s30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Implementations",
              style: getBoldStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s20,
              ),
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Shared Preferences and Stream with JSON",
              routeName: RoutesName.spStreamJson,
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Shared Preferences and Stream with String",
              routeName: RoutesName.practiceSpStreamString,
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Practice Shimmer Effect",
              routeName: RoutesName.practiceShimmerEffect,
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Practice Custom Scroll View",
              routeName: RoutesName.practiceCustomScrollView,
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Flutter Inspector Demo",
              routeName: RoutesName.flutterInspectorDemo,
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Practice Check List Tile Widget",
              routeName: RoutesName.checkListTileWidget,
            ),
            AppSpacing.verticalSpacing2,
            const Divider(
              thickness: 2,
              color: kBlackColor,
            ),
            AppSpacing.verticalSpacing2,
            Text(
              "MoveOn Screens",
              style: getBoldStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s20,
              ),
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Checkout",
              routeName: RoutesName.checkOutScreen,
            ),
            AppSpacing.verticalSpacing2,
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  isScrollControlled: true,
                  enableDrag: false,
                  useSafeArea: true,
                  context: context,
                  builder: (context) => const DescriptionOfCartoon(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Description of Cartoon 1",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  isScrollControlled: true,
                  enableDrag: false,
                  useSafeArea: true,
                  context: context,
                  builder: (context) => const Items(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Items",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  isScrollControlled: true,
                  enableDrag: false,
                  useSafeArea: true,
                  context: context,
                  builder: (context) => const FilterScreen(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Filter Screen",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Product Details Screen",
              routeName: RoutesName.productDetailsScreen,
            ),
            AppSpacing.verticalSpacing2,
            const ButtonWidget(
              buttonTitle: "Ship For Me",
              routeName: RoutesName.shipForMeScreen,
            ),
            AppSpacing.verticalSpacing2,
          ],
        ),
      ),
    );
  }
}
