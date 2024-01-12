import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/shopping_cart_screen/shopping_cart_widget/add_more_variations.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/shopping_cart_screen/shopping_cart_widget/count_button_widget.dart';
import '../../../data/shipping_cart_model.dart';
import '../../../utility/constants/app_spacing.dart';
import '../../../utility/constants/asset_manger.dart';
import '../../../utility/constants/colors.dart';
import '../../../utility/constants/font_manager.dart';
import '../../../utility/constants/style_manager.dart';
import '../../../utility/constants/values_manager.dart';

@RoutePage()
class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  int value = 50;
  bool isSelected = false;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kWhiteColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSpacing.verticalSpacing16,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Row(
                    children: [
                      SizedBox(
                        height: AppSize.s18,
                        width: AppSize.s18,
                        child: Checkbox(
                          value: isSelected,
                          onChanged: (value) {
                            // isSelected = value!;
                            setState(() {});
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.r2),
                          ),
                          activeColor: kBaseColor,
                          splashRadius: 0,
                          side: const BorderSide(
                            color: kDDDDDD,
                            width: 1,
                          ),
                        ),
                      ),
                      AppSpacing.horizontalSpacing8,
                      Text(
                        "Select all",
                        style: getMediumStyle(color: k707070),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Delete",
                          style: getMediumStyle(color: k707070),
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpacing.verticalSpacing8,
                listOfProduct(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*List of Product*/
  Container listOfProduct() {
    return Container(
      color: isSelected ? kBadgeColor.withOpacity(0.1) : kWhiteColor,
      padding: const EdgeInsets.only(top: AppSize.s16),
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Row(
                    children: [
                      SizedBox(
                        height: AppSize.s18,
                        width: AppSize.s18,
                        child: Checkbox(
                          value: isSelected,
                          onChanged: (value) {
                            // isSelected = value!;
                            setState(() {});
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.r2),
                          ),
                          activeColor: kBaseColor,
                          splashRadius: 0,
                          side: const BorderSide(
                            color: kDDDDDD,
                            width: 1,
                          ),
                        ),
                      ),
                      AppSpacing.horizontalSpacing12,
                      Text(
                        "Trendy Mart Store",
                        style: getSemiBoldStyle(
                            color: k000000, fontSize: FontSize.s16),
                      ),
                      const Spacer(),
                      Text(
                        "Get 10% Off",
                        style: getSemiBoldStyle(color: kBadgeColor),
                      ),
                    ],
                  ),
                ),
                AppSpacing.verticalSpacing16,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Divider(color: kDDDDDD),
                ),
                AppSpacing.verticalSpacing16,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r6),
                        child: Image.asset(ImageAssets.sliderPng,
                            width: 56, height: 56),
                      ),
                      // SvgPicture.asset(ImageAssets.shoePng, width: 56, height: 56),
                      AppSpacing.horizontalSpacing8,
                      const SizedBox(
                        height: 44,
                        width: 285,
                        child: Text(
                          "Women’s Slippers- Spring and Autumn Months Summer Comfoooooooooooroooooooo",
                          // style: getSemiBoldStyle(color: kTextBlackColor),
                          style: TextStyle(
                            fontSize: FontSize.s14,
                            fontWeight: FontWeight.w600,
                            height: 1.57,
                            color: kTextBlackColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                ),
                AppSpacing.verticalSpacing8,
                listOfStoreItem(),
                AppSpacing.verticalSpacing8,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Row(
                    children: [
                      addButtons(
                          icon: Icons.add,
                          btnTitle: "Add more",
                          onTap: () {
                            showModalBottomSheet(
                              isDismissible: false,
                              isScrollControlled: true,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) => const AddMoreVariations(),
                            );
                          }),
                      AppSpacing.horizontalSpacing16,
                      addButtons(
                          icon: Icons.note_alt_outlined,
                          btnTitle: "Add note",
                          onTap: () {}),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Show more",
                          style: getMediumStyle(
                            color: k4D4D4D,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                AppSpacing.verticalSpacing16,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: AppMargin.m16),
                  // width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: AppPadding.p8,
                    horizontal: AppPadding.p20,
                  ),
                  decoration: BoxDecoration(
                    color: kF2C881.withOpacity(0.1),
                  ),
                  child: Text(
                    "Shipping & domestic delivery charge will be include later",
                    style: getRegularStyle(color: kFF4C4C),
                  ),
                ),
                AppSpacing.verticalSpacing16,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: "Total: ",
                          style: getRegularStyle(color: k4D4D4D),
                        ),
                        TextSpan(
                          text: "৳5,825.00",
                          style: getSemiBoldStyle(
                            color: kTextBlackColor,
                            fontSize: FontSize.s20,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                AppSpacing.verticalSpacing16,
              ],
            );
          },
          separatorBuilder: (context, index) =>
              const Divider(thickness: AppSize.s8, color: kF3F5F4),
          itemCount: 5),
    );
  }

  InkWell addButtons({
    required IconData icon,
    required String btnTitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 32,
        width: 100,
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
        decoration: BoxDecoration(
            border: Border.all(color: kDDDDDD),
            borderRadius: BorderRadius.circular(AppRadius.r4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: AppSize.s14,
              color: k4D4D4D,
            ),
            Text(
              btnTitle,
              style: getMediumStyle(color: k4D4D4D),
            ),
          ],
        ),
      ),
    );
  }

  /*List of Store Item*/
  Container listOfStoreItem() {
    return Container(
      color: /*kECFAF3 :*/ kWhiteColor,
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16, vertical: AppPadding.p8),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(
                height: AppSize.s18,
                width: AppSize.s18,
                child: Checkbox(
                  value: isSelected,
                  onChanged: (value) {
                    print("object");
                    isSelected = !value!;
                    selectedIndex = index;
                    print(value);
                    print(index);
                    // print(index);
                    setState(() {});
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.r2),
                  ),
                  activeColor: kBaseColor,
                  splashRadius: 0,
                  side: const BorderSide(
                    color: kDDDDDD,
                    width: 1,
                  ),
                ),
              ),
              AppSpacing.horizontalSpacing12,
              ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.r4),
                child: Image.asset(
                  ImageAssets.sliderPng,
                  height: 32,fit: BoxFit.fill,
                  width: 32,
                ),
              ),
              AppSpacing.horizontalSpacing8,
              Text(
                "Size: ${productVariant[index].size}",
                style: getRegularStyle(color: k000000),
              ),
              AppSpacing.horizontalSpacing14,
              Text(
                "৳${productVariant[index].price}",
                style: getRegularStyle(color: k707070),
              ),
              const Spacer(),
              SizedBox(
                width: 88,
                height: 26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountButtonWidget(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            value--;
                          });
                        }
                      },
                      icon: Icons.remove,
                    ),
                    Text(
                      value.toString(),
                      style: getRegularStyle(color: kTextBlackColor),
                    ),
                    CountButtonWidget(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            value++;
                          });
                        }
                      },
                      icon: Icons.add,
                    ),
                  ],
                ),
              ),
              AppSpacing.horizontalSpacing16,
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.delete_outline,
                  size: AppSize.s20,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const Divider(color: kEEEEEE),
        itemCount: productVariant.length,
      ),
    );
  }
}
