import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/ship_for_me_screen/ship_for_me_widgets/product_details.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/ship_for_me_screen/ship_for_me_widgets/shipping_details.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/ship_for_me_screen/ship_for_me_widgets/value_added_services.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

@RoutePage()
class ShipForMeScreen extends StatefulWidget {
  const ShipForMeScreen({super.key});

  @override
  State<ShipForMeScreen> createState() => _ShipForMeScreenState();
}

class _ShipForMeScreenState extends State<ShipForMeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  late List<Widget> screens = [
    const ShippingDetails(),
    const ProductDetails(),
    const ValueAddedServices()
  ];

  @override
  void initState() {
    /*screens = [
      const ShippingDetails(),
    ];*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: AppSize.s20,
                  color: kBlackColor,
                )),
            AppSpacing.horizontalSpacing8,
            Text(
              "Ship for me",
              style:
                  getBoldStyle(color: kTextBlackColor, fontSize: FontSize.s16),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              splashFactory: NoSplash.splashFactory,
              highlightColor: kTransparent,
              child: const Icon(
                Icons.arrow_back,
                size: AppSize.s20,
                color: kBlackColor,
              ),
            ),
            AppSpacing.horizontalSpacing10,
            InkWell(
              onTap: () {},
              splashFactory: NoSplash.splashFactory,
              highlightColor: kTransparent,
              child: const Icon(
                Icons.notifications_none,
                size: AppSize.s20,
                color: kBlackColor,
              ),
            ),
            AppSpacing.horizontalSpacing6,
            InkWell(
              onTap: () {},
              splashFactory: NoSplash.splashFactory,
              highlightColor: kTransparent,
              child: const Icon(
                Icons.more_vert,
                size: AppSize.s20,
                color: kBorderColor,
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: kWhiteColor,
        elevation: 1,
        surfaceTintColor: kWhiteColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: AppPadding.p16,
              left: AppPadding.p16,
              right: AppPadding.p16,
            ),
            child: Row(
              children: [
                _customStepper(
                  currentIndex: _currentIndex,
                  index: 0,
                  firstLine: true,
                  onTap: () {
                    setState(
                      () {
                        _currentIndex = 0;
                      },
                    );
                    _pageController.jumpToPage(0);
                  },
                ),
                _customStepper(
                  currentIndex: _currentIndex,
                  index: 1,
                  onTap: () {
                    setState(
                      () {
                        _currentIndex = 1;
                      },
                    );
                    _pageController.jumpToPage(1);
                  },
                ),
                _customStepper(
                  currentIndex: _currentIndex,
                  index: 2,
                  lastLine: true,
                  onTap: () {
                    setState(
                      () {
                        _currentIndex = 2;
                      },
                    );
                    _pageController.jumpToPage(2);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: screens.length,
              controller: _pageController,
              itemBuilder: (context, index) => screens[index],
            ),
          ),
        ],
      ),
    );
  }

  Widget _customStepper({
    bool firstLine = false,
    bool lastLine = false,
    required int index,
    required int currentIndex,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              firstLine
                  ? const SizedBox()
                  : Expanded(
                      child: Container(
                        height: 1,
                        color: currentIndex >= index ? kBaseColor : kDDDDDD,
                      ),
                    ),
              InkWell(
                onTap: onTap,
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: currentIndex >= index ? kBaseColor : kDDDDDD,
                  child: CircleAvatar(
                    radius: AppRadius.r20,
                    backgroundColor:
                        index <= currentIndex ? kBaseColor : kWhiteColor,
                    child: index == currentIndex && currentIndex >= index
                        ? Image.asset(
                            ImageAssets.stepperLogoPng,
                            color: kWhiteColor,
                            height: 22,
                            width: 16,
                          )
                        : currentIndex >= index
                            ? const Icon(
                                Icons.check,
                                size: 22,
                                color: kWhiteColor,
                              )
                            : Text(
                                "${index + 1}",
                                style: getMediumStyle(
                                  color: kDDDDDD,
                                  fontSize: FontSize.s16,
                                ),
                              ),
                  ),
                ),
              ),
              lastLine
                  ? const SizedBox()
                  : Expanded(
                      child: Container(
                        height: 1,
                        color: currentIndex >= index ? kBaseColor : kDDDDDD,
                      ),
                    ),
            ],
          ),
          AppSpacing.verticalSpacing24,
        ],
      ),
    );
  }
}
