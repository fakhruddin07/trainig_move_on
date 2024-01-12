import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../../utility/constants/values_manager.dart';
import '../products_filter_screen/products_filter_screen.dart';
import '../products_widgets/order_shimmer_effect.dart';
import '../products_widgets/product_widget.dart';

@RoutePage()
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  bool shimmerEnable = true;

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      shimmerEnable = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shadowColor: kWhiteColor.withOpacity(0.6),
        elevation: 2,
        backgroundColor: kWhiteColor,
        surfaceTintColor: kWhiteColor,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              splashFactory: NoSplash.splashFactory,
              radius: 0,
              highlightColor: kTransparent,
              child: const Icon(
                Icons.arrow_back,
                size: AppSize.s20,
                color: kTextBlackColor,
                weight: 2,
              ),
            ),
            AppSpacing.horizontalSpacing8,
            Text(
              "Products",
              style: getBoldStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s16,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              splashFactory: NoSplash.splashFactory,
              radius: 0,
              highlightColor: kTransparent,
              child: const Icon(
                Icons.notifications_none,
                size: AppSize.s20,
                color: kTextBlackColor,
                weight: 2,
              ),
            ),
            AppSpacing.horizontalSpacing24,
            InkWell(
              onTap: () {},
              splashFactory: NoSplash.splashFactory,
              radius: 0,
              highlightColor: kTransparent,
              child: const Icon(
                Icons.more_vert,
                size: AppSize.s20,
                color: kBorderColor,
                weight: 2,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p16,
              top: AppPadding.p16,
              right: AppPadding.p16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Filter",
                  style: getBoldStyle(
                    color: kTextBlackColor,
                    fontSize: FontSize.s16,
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      isDismissible: false,
                      enableDrag: false,
                      isScrollControlled: true,backgroundColor: kWhiteColor,
                      useSafeArea: true,
                      context: context,
                      builder: (context) => const ProductsFilterScreen(),
                    );
                  },
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: kTransparent,
                  child: const Icon(
                    Icons.filter_alt_sharp,
                    size: AppSize.s18,
                    color: kBlackColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 3,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(
                thickness: 8,
                color: kEEEEEE,
              ),
              itemBuilder: (context, index) {
                if (shimmerEnable) {
                  return OrderShimmerEffect(shimmerEnable: shimmerEnable);
                } else {
                  return const ProductWidget();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
