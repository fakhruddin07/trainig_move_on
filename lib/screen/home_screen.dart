import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:training_moveon/screen/check_list_tile_widget.dart';
import 'package:training_moveon/screen/checkout_screen.dart';
import 'package:training_moveon/screen/dart_flutter_dev_tool/flutter_inspector_demo.dart';
import 'package:training_moveon/screen/description_of_cartoon.dart';
import 'package:training_moveon/screen/filter_screen.dart';
import 'package:training_moveon/screen/items.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';

import '../utility/constants/colors.dart';
import '../utility/constants/font_manager.dart';
import '../utility/constants/style_manager.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
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
              log(
                "Log Event: Flutter Inspector Demo",
                name: "flutterInspectorLog",
                error: const FlutterInspectorDemo(),
              );
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
              log(
                "message",
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
        ],
      ),
    );
  }
}
