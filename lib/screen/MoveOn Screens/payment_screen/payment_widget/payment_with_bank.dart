import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/forms/form_field_wrapper.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';
import '../../../../data/data_list.dart';

class PaymentWithBank extends StatefulWidget {
  const PaymentWithBank({
    super.key,
  });

  @override
  State<PaymentWithBank> createState() => _PaymentWithBankState();
}

class _PaymentWithBankState extends State<PaymentWithBank> {
  bool isBankInfoExpanded = false;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: AppPadding.p16),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: banksList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: AppPadding.p8),
          child: Container(
            height: selectedIndex == index ? 612 : AppSize.s40,
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            decoration: BoxDecoration(
              color: kEEEEEE,
              borderRadius: BorderRadius.circular(
                  selectedIndex == index ? AppRadius.r6 : AppRadius.r4),
              border: Border.all(
                  color: selectedIndex == index ? kBaseColor : kTransparent),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    selectedIndex == index
                        ? SizedBox(
                            height: AppPadding.p20,
                            width: AppPadding.p20,
                            child: Checkbox(
                              value: isBankInfoExpanded,
                              onChanged: (value) {
                                isBankInfoExpanded = value!;
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
                    selectedIndex == index
                        ? AppSpacing.horizontalSpacing16
                        : const SizedBox(),
                    Image.asset(ImageAssets.cityBankPng),
                    AppSpacing.horizontalSpacing16,
                    Text(
                      banksList[index],
                      style: getRegularStyle(color: kTextBlackColor),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        selectedIndex = index;
                        if(selectedIndex == index){
                          isBankInfoExpanded = !isBankInfoExpanded;
                        }
                        setState(() {});
                      },
                      child: Icon(
                        selectedIndex == index
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: AppSize.s12,
                        color: kA0A0A0,
                      ),
                    ),
                  ],
                ),
                selectedIndex == index
                    ? const BankAccountWidget()
                    : const SizedBox(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BankAccountWidget extends StatefulWidget {
  const BankAccountWidget({
    super.key,
  });

  @override
  State<BankAccountWidget> createState() => _BankAccountWidgetState();
}

class _BankAccountWidgetState extends State<BankAccountWidget> {
  final TextEditingController _referenceTEController = TextEditingController();
  final TextEditingController _depositDateTEController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.verticalSpacing16,
        const Divider(
          color: kD9D9D9,
        ),
        AppSpacing.verticalSpacing16,
        Container(
          // height: 206,
          padding: const EdgeInsets.only(
            left: AppPadding.p16,
            top: AppPadding.p16,
            bottom: AppPadding.p16,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(AppRadius.r8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account Information',
                style: getBoldStyle(
                  color: kTextBlackColor,
                ),
              ),
              AppSpacing.verticalSpacing16,
              RichText(
                text: TextSpan(
                    text: 'Bank name: ',
                    style: getRegularStyle(color: k707070),
                    children: [
                      TextSpan(
                        text: 'The City Bank',
                        style: getRegularStyle(color: kTextBlackColor),
                      )
                    ]),
              ),
              AppSpacing.verticalSpacing8,
              RichText(
                text: TextSpan(
                    text: 'Payee: ',
                    style: getRegularStyle(color: k707070),
                    children: [
                      TextSpan(
                        text: 'MoveOn and Ali2BD Technologies Limited',
                        style: getRegularStyle(color: kTextBlackColor),
                      )
                    ]),
              ),
              AppSpacing.verticalSpacing8,
              RichText(
                text: TextSpan(
                    text: 'Account number: ',
                    style: getRegularStyle(color: k707070),
                    children: [
                      TextSpan(
                        text: '50948475618001',
                        style: getRegularStyle(color: kTextBlackColor),
                      )
                    ]),
              ),
              AppSpacing.verticalSpacing8,
              RichText(
                text: TextSpan(
                    text: 'Branch: ',
                    style: getRegularStyle(color: k707070),
                    children: [
                      TextSpan(
                        text: 'Dhanmondi',
                        style: getRegularStyle(color: kTextBlackColor),
                      )
                    ]),
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpacing16,
        Container(
          padding: const EdgeInsets.all(AppPadding.p16),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(AppRadius.r8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payable',
                    style: getBoldStyle(
                      color: kTextBlackColor,
                      fontSize: FontSize.s16,
                    ),
                  ),
                  Text(
                    '3500 BDT',
                    style: getBoldStyle(
                      color: kTextBlackColor,
                      fontSize: FontSize.s16,
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpacing24,
              FormFieldWrapper(
                label: 'Reference',
                color: k4D4D4D,
                fontWeight: FontWeightManager.regular,
                fontSize: FontSize.s16,
                isRequired: false,
                child: KTextField(
                  controller: _referenceTEController,
                  hintText: 'Transaction reference',
                  hintColor: kA0A0A0,
                ),
              ),
              AppSpacing.verticalSpacing16,
              FormFieldWrapper(
                label: 'Reference',
                color: k4D4D4D,
                fontWeight: FontWeightManager.regular,
                fontSize: FontSize.s16,
                isRequired: false,
                child: KTextField(
                  controller: _depositDateTEController,
                  hintText: 'Transaction reference',
                  hintColor: kA0A0A0,
                ),
              ),
              AppSpacing.verticalSpacing16,
              FormFieldWrapper(
                label: 'Slips',
                color: k4D4D4D,
                fontWeight: FontWeightManager.regular,
                fontSize: FontSize.s16,
                isRequired: false,
                child: SizedBox(
                  height: AppSize.s40,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kEEEEEE,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadius.r8),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.cloud_download_outlined,
                          size: AppSize.s20,
                          color: k4D4D4D,
                        ),
                        AppSpacing.horizontalSpacing4,
                        Text(
                          'Upload Image',
                          style: getRegularStyle(color: k4D4D4D),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
