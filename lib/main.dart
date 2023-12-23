import 'package:flutter/material.dart';
import 'package:training_moveon/screen/description_of_cartoon_screen/description_of_cartoon.dart';
import 'package:training_moveon/screen/prctice_check_list_tile_widget/practice_check_list_tile_widget.dart';
import 'package:training_moveon/screen/checkout_screen/checkout_screen.dart';
import 'package:training_moveon/screen/dart_flutter_dev_tool/flutter_inspector_demo.dart';
import 'package:training_moveon/screen/filter_screen/filter_screen.dart';
import 'package:training_moveon/screen/home/home_screen.dart';
import 'package:training_moveon/screen/items_screen/items.dart';
import 'package:training_moveon/screen/practice_custom_scroll_view/practice_custom_scroll_view.dart';
import 'package:training_moveon/screen/practice_shimmer_effect/practice_shimmer_effect.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_screen.dart';
import 'package:training_moveon/screen/routes/routes_name.dart';
import 'package:training_moveon/screen/shared_preference_nd_stream/show_json_data/sp_stream_json_1.dart';
import 'package:training_moveon/screen/shared_preference_nd_stream/show_string/sp_and_stream_screen_1.dart';
import 'package:training_moveon/screen/ship_for_me_screen/ship_for_me_screen.dart';
import 'package:training_moveon/utility/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          onBackground: kWhiteColor,
        ),
        useMaterial3: true,
      ),
      initialRoute: "/home",
      routes: {
        RoutesName.home : (context) => const HomeScreen(),
        RoutesName.spStreamJson : (context) => const SpStreamJson1(),
        RoutesName.practiceSpStreamString : (context) => const SPAndStreamScreen1(),
        RoutesName.practiceShimmerEffect : (context) => const PracticeShimmerEffect(),
        RoutesName.practiceCustomScrollView : (context) => const PracticeCustomScrollView(),
        RoutesName.checkOutScreen : (context) => const CheckOutScreen(),
        RoutesName.descriptionOfCartoon1 : (context) => const DescriptionOfCartoon(),
        RoutesName.items : (context) => const Items(),
        RoutesName.flutterInspectorDemo : (context) => const FlutterInspectorDemo(),
        RoutesName.filterScreen : (context) => const FilterScreen(),
        RoutesName.checkListTileWidget : (context) => const PracticeCheckListTileWidget(),
        RoutesName.productDetailsScreen : (context) => const ProductDetailsScreen(),
        RoutesName.shipForMeScreen : (context) => const ShipForMeScreen(),
      },
      // home: const HomeScreen(),
    );
  }
}
