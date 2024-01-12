import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/routes/app_router.gr.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';

import '../../common_widgets/button_widget.dart';
import '../../utility/constants/colors.dart';
import '../../utility/constants/font_manager.dart';
import '../../utility/constants/style_manager.dart';
import '../MoveOn Screens/description_of_cartoon_screen/description_of_cartoon.dart';
import '../MoveOn Screens/filter_screen/filter_screen.dart';
import '../MoveOn Screens/items_screen/items.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            ButtonWidget(
              buttonTitle: "Skeletons Screen",
              onTap: () {
                context.router.push(const SkeletonsRoute());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Shared Preferences and Stream with JSON",
              onTap: () {
                context.router.push(const StreamJsonOne());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Shared Preferences and Stream with String",
              onTap: () {
                context.router.push(const SPAndStreamRoute1());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Practice Shimmer Effect",
              onTap: () {
                context.router.push(const PracticeShimmerEffect());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Practice Custom Scroll View",
              onTap: () {
                context.router.push(const PracticeCustomScrollView());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Flutter Inspector Demo",
              onTap: () {
                context.router.push(const FlutterInspectorDemo());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Practice Check List Tile Widget",
              onTap: () {
                context.router.push(const PracticeCheckListTileWidget());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Practice Theme",
              onTap: () {
                context.router.push(const PracticeTheme());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Practice DIO GET method",
              onTap: () {
                context.router.push(const DioGetMethod());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Practice DIO POST method",
              onTap: () {
                context.router.push(const DioPostMethod());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Practice Flutter Hooks",
              onTap: () {
                context.router.push(const PracticeFlutterHooks());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Bloc Practice",
              onTap: () {
                context.router.push(const BlocPractice());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Practice Ship For Me",
              onTap: () {
                context.router.push(const PracticeShipForMe());
              },
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
            ButtonWidget(
              buttonTitle: "Checkout",
              onTap: () {
                context.router.push(CheckOutRoute());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Payment Screen",
              onTap: () {
                context.router.push(const PaymentRoute());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Shopping Cart",
              onTap: () {
                context.router.push(const ShoppingCartRoute());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Wallet Screen",
              onTap: () {
                context.router.push(const WalletRoute());
              },
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
            ButtonWidget(
              buttonTitle: "Product Details Screen",
              onTap: () {
                context.router.push(const ProductDetailsRoute());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Ship For Me",
              onTap: () {
                context.router.push(const ShipForMeRoute());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Products",
              onTap: () {
                context.router.push(const ProductsRoute());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "My Orders Screen",
              onTap: () {
                context.router.push(const MyOrdersRoute());
              },
            ),
            AppSpacing.verticalSpacing2,
          ],
        ),
      ),
    );
  }
}
