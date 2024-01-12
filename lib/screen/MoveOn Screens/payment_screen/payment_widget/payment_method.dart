import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_drop_down.dart';
import 'package:training_moveon/data/data_list.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/payment_screen/payment_widget/payment_option.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/payment_screen/payment_widget/payment_with_bank.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/payment_screen/payment_widget/payment_with_card_widget.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../../utility/constants/asset_manger.dart';

@RoutePage()
class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool selectValue = false;
  bool isMyWalletSelectValue = false;
  bool isCardExpanded = false;
  bool isBankExpanded = false;
  bool isBkashSelected = false;
  bool isRocketSelected = false;
  bool isNagadSelected = false;
  bool isUpaySelected = false;

  final OverlayPortalController _currencyOverlayPortalController =
      OverlayPortalController();

  String selectedValue = "USD";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Method',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s30,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Method',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeightManager.bold),
                  ),
                  AppSpacing.verticalSpacing20,
                  Row(
                    children: [
                      AppSpacing.horizontalSpacing56,
                      Text(
                        'Select your currency',
                        style: getRegularStyle(color: kTextBlackColor),
                      ),
                      AppSpacing.horizontalSpacing16,
                      Expanded(
                        child: CustomDropDown(
                          controller: _currencyOverlayPortalController,
                          isExpanded: false,
                          selectedValue: selectedValue,
                          child: ListView.builder(
                            itemCount: currency.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p16,
                                  vertical: AppPadding.p8,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    selectedValue = currency[index];
                                    _currencyOverlayPortalController.toggle();
                                    setState(() {});
                                  },
                                  child: Text(currency[index]),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  AppSpacing.verticalSpacing14,
                  InkWell(
                    onTap: (){
                      setState(() {
                        isMyWalletSelectValue = !isMyWalletSelectValue;
                      });
                    },
                    child: PaymentOption(
                      height: AppSize.s46,
                      borderColor: isMyWalletSelectValue ? kBaseColor : kDDDDDD,
                      child: Row(
                        children: [
                          isMyWalletSelectValue
                          ? SizedBox(
                            height: AppPadding.p20,
                            width: AppPadding.p20,
                            child: Checkbox(
                              value: isMyWalletSelectValue,
                              onChanged: (value) {
                                isMyWalletSelectValue = !isMyWalletSelectValue;
                                isMyWalletSelectValue = value!;
                                setState(() {});
                              },
                              activeColor: kBaseColor,
                              splashRadius: 0,
                              side: const BorderSide(color: kDDDDDD),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(AppRadius.r2),
                              ),
                            ),
                          )
                          : const SizedBox(),
                          isMyWalletSelectValue
                          ? AppSpacing.horizontalSpacing16
                          : const SizedBox(),
                          Image.asset(
                            ImageAssets.walletPng,
                            height: AppSize.s26,
                            width: AppSize.s26,
                            fit: BoxFit.fill,
                          ),
                          AppSpacing.horizontalSpacing16,
                          Text(
                            'My Wallet',
                            style: getRegularStyle(color: kTextBlackColor),
                          ),
                          const Spacer(),
                          Text(
                            '\$5000',
                            style: getRegularStyle(color: kTextBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpacing16,
                  PaymentOption(
                    height: isCardExpanded ? 412 : AppSize.s46,
                    borderColor: isCardExpanded ? kBaseColor : kDDDDDD,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            isCardExpanded
                                ? SizedBox(
                                    height: AppPadding.p20,
                                    width: AppPadding.p20,
                                    child: Checkbox(
                                      value: isCardExpanded,
                                      onChanged: (value) {
                                        isCardExpanded = !isCardExpanded;
                                        isCardExpanded = value!;
                                        setState(() {});
                                      },
                                      activeColor: kBaseColor,
                                      splashRadius: 0,
                                      side: const BorderSide(color: kDDDDDD),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(AppRadius.r2),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                            isCardExpanded
                                ? AppSpacing.horizontalSpacing16
                                : const SizedBox(),
                            Image.asset(
                              ImageAssets.cardPng,
                              height: AppSize.s26,
                              width: AppSize.s26,
                              fit: BoxFit.fill,
                            ),
                            AppSpacing.horizontalSpacing16,
                            Text(
                              'Credit/ Debit Card',
                              style: getRegularStyle(color: kTextBlackColor),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isCardExpanded = !isCardExpanded;
                                  isBankExpanded = false;
                                  isBkashSelected = false;
                                  isRocketSelected = false;
                                  isNagadSelected = false;
                                  isUpaySelected = false;
                                });
                              },
                              child: Icon(
                                isCardExpanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                size: AppSize.s12,
                                color: kA0A0A0,
                              ),
                            ),
                          ],
                        ),
                        isCardExpanded
                            ? const PaymentWithCard()
                            : const SizedBox()
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpacing16,
                  PaymentOption(
                    padding: const EdgeInsets.only(
                      top: AppPadding.p12,
                      right: AppPadding.p16,
                      bottom: AppPadding.p12,
                      left: AppPadding.p16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              ImageAssets.bankPng,
                              height: AppSize.s22,
                              width: AppSize.s22,
                              fit: BoxFit.fill,
                            ),
                            AppSpacing.horizontalSpacing16,
                            Text(
                              'Bank Deposit',
                              style: getRegularStyle(color: kTextBlackColor),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isBankExpanded = !isBankExpanded;
                                  isCardExpanded = false;
                                  isBkashSelected = false;
                                  isRocketSelected = false;
                                  isNagadSelected = false;
                                  isUpaySelected = false;
                                });
                              },
                              child: Icon(
                                isBankExpanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                size: AppSize.s12,
                                color: kA0A0A0,
                              ),
                            ),
                          ],
                        ),
                        isBankExpanded
                            ? const PaymentWithBank()
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpacing16,
                  InkWell(
                    onTap: () {
                      setState(() {
                        isBkashSelected = !isBkashSelected;
                        isCardExpanded = false;
                        isBankExpanded = false;
                        isRocketSelected = false;
                        isNagadSelected = false;
                        isUpaySelected = false;
                      });
                    },
                    child: PaymentOption(
                      height: AppSize.s46,
                      borderColor: isBkashSelected ? kBaseColor : kDDDDDD,
                      child: Row(
                        children: [
                          isBkashSelected
                              ? SizedBox(
                                  height: AppPadding.p20,
                                  width: AppPadding.p20,
                                  child: Checkbox(
                                    value: isBkashSelected,
                                    onChanged: (value) {
                                      isBkashSelected = value!;
                                      setState(() {});
                                    },
                                    activeColor: kBaseColor,
                                    splashRadius: 0,
                                    side: const BorderSide(color: kDDDDDD),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(AppRadius.r2),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          isBkashSelected
                              ? AppSpacing.horizontalSpacing16
                              : const SizedBox(),
                          Image.asset(
                            ImageAssets.bkashPng,
                            height: AppSize.s22,
                            width: AppSize.s22,
                            fit: BoxFit.fill,
                          ),
                          AppSpacing.horizontalSpacing16,
                          Text(
                            'bKash',
                            style: getRegularStyle(color: kTextBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpacing16,
                  InkWell(
                    onTap: () {
                      setState(() {
                        isRocketSelected = !isRocketSelected;
                        isCardExpanded = false;
                        isBankExpanded = false;
                        isBkashSelected = false;
                        isNagadSelected = false;
                        isUpaySelected = false;
                      });
                    },
                    child: PaymentOption(
                      height: AppSize.s46,
                      borderColor: isRocketSelected ? kBaseColor : kDDDDDD,
                      child: Row(
                        children: [
                          isRocketSelected
                              ? SizedBox(
                                  height: AppPadding.p20,
                                  width: AppPadding.p20,
                                  child: Checkbox(
                                    value: isRocketSelected,
                                    onChanged: (value) {
                                      isRocketSelected = value!;
                                      setState(() {});
                                    },
                                    activeColor: kBaseColor,
                                    splashRadius: 0,
                                    side: const BorderSide(color: kDDDDDD),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(AppRadius.r2),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          isRocketSelected
                              ? AppSpacing.horizontalSpacing16
                              : const SizedBox(),
                          Image.asset(
                            ImageAssets.rocketPng,
                            height: AppSize.s22,
                            width: AppSize.s22,
                            fit: BoxFit.fill,
                          ),
                          AppSpacing.horizontalSpacing16,
                          Text(
                            'Rocket',
                            style: getRegularStyle(color: kTextBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpacing16,
                  InkWell(
                    onTap: () {
                      setState(() {
                        isNagadSelected = !isNagadSelected;
                        isCardExpanded = false;
                        isBankExpanded = false;
                        isBkashSelected = false;
                        isRocketSelected = false;
                        isUpaySelected = false;
                      });
                    },
                    child: PaymentOption(
                      height: AppSize.s46,
                      borderColor: isNagadSelected ? kBaseColor : kDDDDDD,
                      child: Row(
                        children: [
                          isNagadSelected
                              ? SizedBox(
                                  height: AppPadding.p20,
                                  width: AppPadding.p20,
                                  child: Checkbox(
                                    value: isNagadSelected,
                                    onChanged: (value) {
                                      isNagadSelected = value!;
                                      setState(() {});
                                    },
                                    activeColor: kBaseColor,
                                    splashRadius: 0,
                                    side: const BorderSide(color: kDDDDDD),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(AppRadius.r2),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          isNagadSelected
                              ? AppSpacing.horizontalSpacing16
                              : const SizedBox(),
                          Image.asset(
                            ImageAssets.nagadPng,
                            height: AppSize.s22,
                            width: AppSize.s22,
                            fit: BoxFit.fill,
                          ),
                          AppSpacing.horizontalSpacing16,
                          Text(
                            'Nagad',
                            style: getRegularStyle(color: kTextBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.verticalSpacing16,
                  InkWell(
                    onTap: (){
                      setState(() {
                        isUpaySelected = !isUpaySelected;
                        isCardExpanded = false;
                        isBankExpanded = false;
                        isBkashSelected = false;
                        isRocketSelected = false;
                        isNagadSelected = false;
                      });
                    },
                    child: PaymentOption(
                      height: AppSize.s46,
                      borderColor: isUpaySelected ? kBaseColor : kDDDDDD,
                      child: Row(
                        children: [
                          isUpaySelected
                          ? SizedBox(
                            height: AppPadding.p20,
                            width: AppPadding.p20,
                            child: Checkbox(
                              value: isUpaySelected,
                              onChanged: (value) {
                                isUpaySelected = value!;
                                setState(() {});
                              },
                              activeColor: kBaseColor,
                              splashRadius: 0,
                              side: const BorderSide(color: kDDDDDD),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(AppRadius.r2),
                              ),
                            ),
                          )
                          : const SizedBox(),
                          isUpaySelected
                          ? AppSpacing.horizontalSpacing16
                          : const SizedBox(),
                          Image.asset(
                            ImageAssets.upayPng,
                            height: AppSize.s22,
                            width: AppSize.s22,
                            fit: BoxFit.fill,
                          ),
                          AppSpacing.horizontalSpacing16,
                          Text(
                            'Upay',
                            style: getRegularStyle(color: kTextBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppPadding.p10, horizontal: AppPadding.p16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total items 15 pieces',
                      style: getRegularStyle(color: kTextBlackColor),
                    ),
                    AppSpacing.verticalSpacing4,
                    RichText(
                      text: TextSpan(
                          text: 'Total: ',
                          style: getRegularStyle(color: kTextBlackColor),
                          children: [
                            TextSpan(
                                text: "৳10,000.00",
                                style: getSemiBoldStyle(color: kTextBlackColor))
                          ]),
                    )
                  ],
                ),
                SizedBox(
                  height: AppSize.s40,
                  width: 164,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kBaseColor,
                        splashFactory: NoSplash.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadius.r6),
                          side: BorderSide.none,
                        )),
                    onPressed: () {},
                    child: Text(
                      "Pay Now",
                      style: getSemiBoldStyle(color: kWhiteColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
