// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:training_moveon/screen/check_list_tile_widget.dart';
import 'package:training_moveon/screen/checkout_screen.dart';
import 'package:training_moveon/screen/dart_flutter_dev_tool/flutter_inspector_demo.dart';
import 'package:training_moveon/screen/description_of_cartoon.dart';
import 'package:training_moveon/screen/filter_screen.dart';
import 'package:training_moveon/screen/items.dart';
import 'package:training_moveon/screen/practice_custom_scroll_view.dart';
import 'package:training_moveon/screen/practice_shimmer_effect/practice_shimmer_effect.dart';
import 'package:training_moveon/screen/shared_preference_nd_stream/show_string/sp_and_stream_screen_1.dart';
import 'package:training_moveon/screen/shared_preference_nd_stream/show_json_data/sp_stream_json_1.dart';
import 'package:training_moveon/screen/ship_for_me_screen/ship_for_me_screen.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';

import '../../utility/constants/colors.dart';
import '../../utility/constants/font_manager.dart';
import '../../utility/constants/style_manager.dart';
import '../product_details_screen/custom_scroll_view_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Training",
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SpStreamJson1(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Shared Preferences and Stream with JSON",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SPAndStreamScreen1(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Practice Shared Preferences and Stream",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PracticeShimmerEffect(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Practice Shimmer Effect",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PracticeCustomScrollView(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Practice Custom Scroll View",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckOutScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Checkout",
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FlutterInspectorDemo(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Flutter Inspector Demo",
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckListTileWidget(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Check List Tile Widget",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomScrollViewWidget(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "CustomScrollView",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShipForMeScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Ship For Me",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
            AppSpacing.verticalSpacing2,
          ],
        ),
      ),
    );
  }
}
