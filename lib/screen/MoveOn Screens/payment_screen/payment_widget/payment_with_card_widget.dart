import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/forms/form_field_wrapper.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

class PaymentWithCard extends StatefulWidget {
  const PaymentWithCard({
    super.key,
  });

  @override
  State<PaymentWithCard> createState() => _PaymentWithCardState();
}

class _PaymentWithCardState extends State<PaymentWithCard> {
  final TextEditingController _cardNumberTEController = TextEditingController();
  final TextEditingController _cardOwnerTEController = TextEditingController();
  final TextEditingController _cvvCodeTEController = TextEditingController();
  DateTime? newDate;
  String selectDate = 'Select Date';
  bool isCardSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.verticalSpacing18,
        FormFieldWrapper(
          label: "Card number",
          isRequired: false,
          child: KTextField(
            controller: _cardNumberTEController,
            keyboardType: TextInputType.number,
          ),
        ),
        AppSpacing.verticalSpacing16,
        FormFieldWrapper(
          label: "Card holder name",
          isRequired: false,
          child: KTextField(
            controller: _cardOwnerTEController,
            keyboardType: TextInputType.text,
          ),
        ),
        AppSpacing.verticalSpacing16,
        FormFieldWrapper(
          label: "Expire date",
          isRequired: false,
          child: SizedBox(
            height: AppSize.s40,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: kDDDDDD),
                borderRadius: BorderRadius.circular(AppRadius.r8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectDate,
                      style: getRegularStyle(color: k707070),
                    ),
                    InkWell(
                      onTap: () async {
                        DateTime? dateTime = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2050),
                          builder: (context, child) {
                            return Theme(
                              data: ThemeData(
                                  colorScheme: ColorScheme.fromSeed(
                                    seedColor: kBaseColor,
                                    surface: kWhiteColor,
                                    onSurface: kTextBlackColor,
                                    background: kWhiteColor,
                                    onBackground: kWhiteColor
                                  ),
                                  datePickerTheme: const DatePickerThemeData(
                                    surfaceTintColor: kWhiteColor,
                                    confirmButtonStyle: ButtonStyle(
                                      foregroundColor:
                                          MaterialStatePropertyAll(kBaseColor),
                                    ),
                                    cancelButtonStyle: ButtonStyle(
                                      foregroundColor:
                                          MaterialStatePropertyAll(k707070),
                                    ),
                                    shape: RoundedRectangleBorder(),
                                  ),
                              ),
                              child: child!,
                            );
                          },
                        );
                        if (dateTime == null) {
                          return;
                        }
                        setState(() {
                          newDate = dateTime;
                          selectDate = '${newDate!.month}/${newDate!.year}';
                        });
                      },
                      child: const Icon(
                        Icons.calendar_today_outlined,
                        size: AppSize.s18,
                        color: kA0A0A0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        AppSpacing.verticalSpacing16,
        FormFieldWrapper(
          label: "CVV Code ⓘ",
          isRequired: false,
          child: KTextField(
            hintText: 'Enter CVV Code',
            controller: _cvvCodeTEController,
            keyboardType: TextInputType.text,
          ),
        ),
        AppSpacing.verticalSpacing12,
        Row(
          children: [
            SizedBox(
              height: AppPadding.p20,
              width: AppPadding.p20,
              child: Checkbox(
                value: isCardSelected,
                onChanged: (value) {
                  isCardSelected = value!;
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
            ),
            AppSpacing.horizontalSpacing8,
            Text('Save this card for future', style: getRegularStyle(color: k707070, fontSize: FontSize.s16,),),
          ],
        )
      ],
    );
  }
}
