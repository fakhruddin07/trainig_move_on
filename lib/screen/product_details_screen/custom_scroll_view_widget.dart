import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/helper_widget.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/product_basic_details.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/product_color_and_size.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/product_descriptions.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/product_reviews.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/product_specifications.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/select_product_shipping_method.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/seller_information.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/you_may_like_widget.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

class CustomScrollViewWidget extends StatefulWidget {
  const CustomScrollViewWidget({super.key});

  @override
  State<CustomScrollViewWidget> createState() => _CustomScrollViewWidgetState();
}

class _CustomScrollViewWidgetState extends State<CustomScrollViewWidget> {
  late ScrollController _scrollController;
  final GlobalKey globalKey1 = GlobalKey();
  final List<String> _sizeList = ["S", "M", "L", "XL"];
  double top = 0;
  bool isSliverAppBarHide = false;
  bool isIconHide = true;
  bool isScrolledUnderElevation = true;
  bool isExtraHeightAdded = false;

  void _scrollListener() {
    if (_scrollController.offset >= 700) {
      setState(() {
        isSliverAppBarHide = true;
        print("OFFSET = ${_scrollController.offset}");
      });
    } else {
      setState(() {
        isSliverAppBarHide = false;
      });
    }
  }

  void _sliverAppbar() {
    if (_scrollController.offset > 100) {
      setState(() {
        isIconHide = false;
      });
    } else {
      setState(() {
        isIconHide = true;
      });
    }
  }

  void _scrolledUnderElevation() {
    if (_scrollController.offset >= 700) {
      setState(() {
        isScrolledUnderElevation = false;
      });
    } else {
      setState(() {
        isScrolledUnderElevation = true;
      });
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _scrollController.addListener(_sliverAppbar);
    _scrollController.addListener(_scrolledUnderElevation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: CustomScrollView(
        controller: _scrollController,
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            expandedHeight: 360,
            pinned: true,
            surfaceTintColor: kWhiteColor,
            backgroundColor: kWhiteColor,
            automaticallyImplyLeading: false,
            scrolledUnderElevation: isScrolledUnderElevation ? 3 : 0,
            shadowColor: kWhiteColor,
            leading: isIconHide
                ? InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    splashFactory: NoSplash.splashFactory,
                    child: const Icon(
                      Icons.arrow_back,
                      size: AppSize.s24,
                    ),
                  )
                : const SizedBox(),
            actions: [
              isIconHide
                  ? CircleAvatar(
                      backgroundColor: k000000.withOpacity(0.5),
                      radius: AppRadius.r20,
                      child: const Icon(
                        Icons.search,
                        size: AppSize.s20,
                        color: kWhiteColor,
                      ),
                    )
                  : const SizedBox(),
              AppSpacing.horizontalSpacing8,
              isIconHide
                  ? CircleAvatar(
                      backgroundColor: k000000.withOpacity(0.5),
                      radius: AppRadius.r20,
                      child: const Icon(
                        Icons.more_vert,
                        size: AppSize.s20,
                        color: kWhiteColor,
                      ),
                    )
                  : const SizedBox(),
              AppSpacing.horizontalSpacing16,
            ],
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.all(AppPadding.p16),
              title: LayoutBuilder(
                builder: (context, constraints) {
                  top = constraints.biggest.height;
                  return AnimatedOpacity(
                    duration: const Duration(milliseconds: 100),
                    opacity: top <= 250 ? 1.0 : 0.0,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          splashFactory: NoSplash.splashFactory,
                          child: const Icon(
                            Icons.arrow_back,
                            size: AppSize.s24,
                            color: kBlackColor,
                          ),
                        ),
                        AppSpacing.horizontalSpacing8,
                        Expanded(
                          child: Text(
                            "Product Details",
                            style: getBoldStyle(
                              color: kTextBlackColor,
                              fontSize: FontSize.s16,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: k000000.withOpacity(0.5),
                          radius: AppRadius.r16,
                          child: InkWell(
                            onTap: () {},
                            splashFactory: NoSplash.splashFactory,
                            child: const Icon(
                              Icons.search,
                              size: AppSize.s16,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                        AppSpacing.horizontalSpacing16,
                        CircleAvatar(
                          backgroundColor: k000000.withOpacity(0.5),
                          radius: AppRadius.r16,
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            size: AppSize.s16,
                            color: kWhiteColor,
                          ),
                        ),
                        AppSpacing.horizontalSpacing16,
                        InkWell(
                          onTap: () {},
                          splashFactory: NoSplash.splashFactory,
                          child: const Icon(
                            Icons.more_vert,
                            size: AppSize.s16,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              background: Image.asset(
                ImageAssets.sliderPng,
                fit: BoxFit.fill,
              ),
            ),
          ),
          isSliverAppBarHide
              ? SliverLayoutBuilder(builder: (context, sliverConstrains) {
                  top = sliverConstrains.scrollOffset <= 944 ? 1.0 : 0.0;
                  return SliverAppBar(
                    pinned: true,
                    toolbarHeight: 0,
                    surfaceTintColor: kWhiteColor,
                    backgroundColor: kWhiteColor,
                    shadowColor: kWhiteColor,
                    automaticallyImplyLeading: false,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      titlePadding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p16),
                      title: Column(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    // double targeted = load();
                                    _scrollController.jumpTo(1660);
                                    // _scrollController.jumpTo(targeted);
                                    /*_scrollController.animateTo(
                                      1660,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.linear,
                                    );*/
                                  },
                                  child: Text(
                                    "Reviews",
                                    style: getBoldStyle(color: kTextBlackColor),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    _scrollController.animateTo(
                                      2378,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.linear,
                                    );
                                  },
                                  child: Text(
                                    "Description",
                                    style: getBoldStyle(color: kTextBlackColor),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    _scrollController.animateTo(
                                      13590,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.linear,
                                    );
                                  },
                                  child: Text(
                                    "Recommendation",
                                    style: getBoldStyle(color: kTextBlackColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AppSpacing.verticalSpacing16,
                        ],
                      ),
                    ),
                  );
                })
              : const SliverToBoxAdapter(),
          const ProductBasicDetails(),
          sliverDivider(),
          ProductColorAndSize(sizeList: _sizeList),
          sliverDivider(),
          const ProductShippingMethod(),
          sliverDivider(),
          const SellerInformation(),
          sliverDivider(),
          const ProductSpecifications(),
          sliverDivider(),
          ProductReviews(key: globalKey1),
          sliverDivider(),
          const ProductDescription(),
          sliverDivider(),
          const YouMayLike(),
          SliverToBoxAdapter(
            child: addH(440),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter sliverDivider() {
    return const SliverToBoxAdapter(
      child: Divider(
        thickness: 8,
        color: kDDDDDD,
      ),
    );
  }
}
