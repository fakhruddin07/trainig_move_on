import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import '../widgets/product_details_widget/product_basic_details.dart';
import '../widgets/product_details_widget/product_color_and_size.dart';
import '../widgets/product_details_widget/product_descriptions.dart';
import '../widgets/product_details_widget/product_reviews.dart';
import '../widgets/product_details_widget/product_specifications.dart';
import '../widgets/product_details_widget/select_product_shipping_method.dart';
import '../widgets/product_details_widget/seller_information.dart';
import '../widgets/product_details_widget/you_may_like_widget.dart';

class CustomScrollViewWidget extends StatefulWidget {
  const CustomScrollViewWidget({super.key});

  @override
  State<CustomScrollViewWidget> createState() => _CustomScrollViewWidgetState();
}

class _CustomScrollViewWidgetState extends State<CustomScrollViewWidget> {
  final ScrollController _scrollController = ScrollController();
  final List<String> _sizeList = ["S", "M", "L", "XL"];
  double top = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            expandedHeight: 360,
            pinned: true,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              titlePadding: const EdgeInsets.all(16),
              title: LayoutBuilder(
                builder: (context, constraints) {
                  top = constraints.biggest.height;
                  return AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: top <= 260 ? 1.0 : 0.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
                          },
                          child: Text(
                            "Seller information",
                            style: getBoldStyle(
                                color: kTextBlackColor, fontSize: 10),
                          ),
                        ),
                        Text(
                          "Reviews",
                          style: getBoldStyle(
                              color: kTextBlackColor, fontSize: 10),
                        ),
                        Text(
                          "Product Descriptions",
                          style: getBoldStyle(
                              color: kTextBlackColor, fontSize: 10),
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
          const ProductReviews(),
          sliverDivider(),
          const ProductDescription(),
    sliverDivider(),
          const YouMayLike(),
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

/*title: Text(
              "Products Details",
              style: getBoldStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s18,
              ),
            ),
            actions: [
              CircleAvatar(
                backgroundColor: k000000.withOpacity(0.5),
                radius: AppRadius.r20,
                child: const Icon(
                  Icons.search,
                  size: AppSize.s20,
                  color: kWhiteColor,
                ),
              ),
              AppSpacing.horizontalSpacing8,
              CircleAvatar(
                backgroundColor: k000000.withOpacity(0.5),
                radius: AppRadius.r20,
                child: const Icon(
                  Icons.more_vert,
                  size: AppSize.s20,
                  color: kWhiteColor,
                ),
              ),
              AppSpacing.horizontalSpacing16,
            ],*/
