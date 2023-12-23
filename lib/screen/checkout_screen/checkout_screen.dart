import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_drop_down.dart';
import 'package:training_moveon/core/widgets/custom_image.dart';
import 'package:training_moveon/core/widgets/custom_rating_bar.dart';
import 'package:training_moveon/core/widgets/forms/form_field_wrapper.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';
import 'package:training_moveon/data/data_list.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../utility/constants/app_spacing.dart';

class CheckOutScreen extends StatefulWidget {
  final IconData? leadingIcon;
  const CheckOutScreen({super.key, this.leadingIcon});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  String selectedCountryValue = "Select Country";
  String selectedDistrictValue = "Select District";

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  final TextEditingController _fNameTEController = TextEditingController();
  final TextEditingController _lNameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _areaTEController = TextEditingController();
  final TextEditingController _postalCodeTEController = TextEditingController();
  final TextEditingController _address1TEController = TextEditingController();
  final TextEditingController _address2TEController = TextEditingController();

  final OverlayPortalController _countryOverlayPortalController =
      OverlayPortalController();
  final OverlayPortalController _districtOverlayPortalController =
      OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },alignment: Alignment.centerLeft,
              style: IconButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                backgroundColor: Colors.transparent,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.zero,
              ),
              icon: const Icon(
                Icons.arrow_back,
                size: AppSize.s16,
                color: kBlackColor,
              ),
            ),
            Text(
              "Checkout",
              style: getBoldStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s16,
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 0.3,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              backgroundColor: Colors.transparent,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
            ),
            icon: const Icon(
              Icons.favorite_border,
              size: AppSize.s20,
              color: k4D4D4D,
            ),
          ),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              backgroundColor: Colors.transparent,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
            ),
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: AppSize.s20,
              color: k4D4D4D,
            ),
          ),
          IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            style: IconButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              backgroundColor: Colors.transparent,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
            ),
            icon: const Icon(
              Icons.notifications_outlined,
              size: AppSize.s20,
              color: k4D4D4D,
            ),
          ),
          AppSpacing.horizontalSpacing8,
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p16),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(ImageAssets.trueJpeg),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Form(
          key: _globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipping Address",
                style: getBoldStyle(
                  color: kTextBlackColor,
                  fontSize: FontSize.s16,
                ),
              ),
              AppSpacing.verticalSpacing16,
              shippingAddressMethod(),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Item 15 Pieces",
                          style: getRegularStyle(color: k000000),
                        ),
                        AppSpacing.verticalSpacing4,
                        RichText(
                          text: TextSpan(
                            text: "Total",
                            style: getRegularStyle(color: kTextBlackColor),
                            children: [
                              TextSpan(
                                text: "৳10,000.00",
                                style: getMediumStyle(color: kTextBlackColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 164,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppRadius.r6),
                          ),
                          backgroundColor: kBaseColor,
                          splashFactory: NoSplash.splashFactory,
                        ),
                        child: Text(
                          "Place Order",
                          style: getSemiBoldStyle(color: kWhiteColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*Shipping Address*/
  Flexible shippingAddressMethod() {
    return Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: FormFieldWrapper(
                            label: "First Name",
                            isRequired: false,
                            child: KTextField(
                              controller: _fNameTEController,
                            ),
                          ),
                        ),
                        AppSpacing.horizontalSpacing16,
                        Expanded(
                          child: FormFieldWrapper(
                            label: "Last Name",
                            isRequired: false,
                            child: KTextField(
                              controller: _lNameTEController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing16,
                    Row(
                      children: [
                        Expanded(
                          child: FormFieldWrapper(
                            label: "Email",
                            isRequired: false,
                            child: KTextField(
                              controller: _emailTEController,
                            ),
                          ),
                        ),
                        AppSpacing.horizontalSpacing16,
                        Expanded(
                          child: FormFieldWrapper(
                            label: "Phone",
                            isRequired: false,
                            child: KTextField(
                              controller: _phoneTEController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing16,
                    Row(
                      children: [
                        Flexible(
                          child: FormFieldWrapper(
                            label: "Country",
                            isRequired: false,
                            child: CustomDropDown(
                              controller: _countryOverlayPortalController,
                              selectedValue: selectedCountryValue,
                              isExpanded: false,
                              child: ListView(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                children: countryList
                                    .map((country) => Padding(
                                          padding: const EdgeInsets.all(14.0),
                                          child: InkWell(
                                            onTap: () {
                                              selectedCountryValue = country["name"];
                                              _countryOverlayPortalController
                                                  .toggle();
                                              setState(() {});
                                            },
                                            child: Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          AppRadius.r6),
                                                  child: Image.asset(
                                                    country["flag"],
                                                    height: 20,
                                                    width: 20,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                AppSpacing.horizontalSpacing8,
                                                Text(country["name"]),
                                              ],
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                        ),
                        AppSpacing.horizontalSpacing16,
                        Flexible(
                          child: FormFieldWrapper(
                            label: "District",
                            isRequired: false,
                            child: CustomDropDown(
                              controller: _districtOverlayPortalController,
                              selectedValue: selectedDistrictValue,
                              isExpanded: false,
                              child: ListView(
                                shrinkWrap: true,
                                // physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.all(0.0),
                                children: districtsList
                                    .map((district) => Padding(
                                          padding: const EdgeInsets.all(14.0),
                                          child: InkWell(
                                            onTap: () {
                                              selectedDistrictValue =
                                                  district;
                                              _districtOverlayPortalController
                                                  .toggle();
                                              setState(() {});
                                            },
                                            child: Text(district),
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing16,
                    Row(
                      children: [
                        Expanded(
                          child: FormFieldWrapper(
                            label: "Area",
                            isRequired: false,
                            child: KTextField(
                              controller: _areaTEController,
                            ),
                          ),
                        ),
                        AppSpacing.horizontalSpacing16,
                        Expanded(
                          child: FormFieldWrapper(
                            label: "Postal Code",
                            isRequired: false,
                            child: KTextField(
                              controller: _postalCodeTEController,
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: "Address 1",
                      isRequired: false,
                      child: KTextField(
                        controller: _address1TEController,
                      ),
                    ),
                    AppSpacing.verticalSpacing16,
                    FormFieldWrapper(
                      label: "Address 2",
                      isRequired: false,
                      child: KTextField(
                        controller: _address2TEController,
                      ),
                    ),
                    AppSpacing.verticalSpacing32,
                    Container(
                      height: 324,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p30,
                        vertical: AppPadding.p24,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: kDDDDDD),
                        borderRadius: BorderRadius.circular(AppRadius.r8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImage(
                            imgUrl:
                                "https://th.bing.com/th/id/R.845f3fded0e146b66fc66fa3d6467083?rik=%2bcd4RskYHZAigw&riu=http%3a%2f%2fdpnow.com%2fimages%2fPhotoFixChallenge%2fDSC00092.JPG&ehk=c06%2bl0ErTk%2byGB4xDJ1kyBrGChLXUj3yIgKZ4csQYt0%3d&risl=1&pid=ImgRaw&r=0",
                            imgHeight: 70,
                            imgWidth: 70,
                            boxShape: BoxShape.circle,
                            imgFit: BoxFit.cover,
                            // borderRadius: 45,
                          ),
                          AppSpacing.verticalSpacing12,
                          Text(
                            "MoveOn is best on shipment business. \n"
                            "I feel truly blessed to take their services. "
                            "Outstanding services!!",
                            textAlign: TextAlign.center,
                            style: getRegularStyle(color: kTextBlackColor),
                          ),
                          AppSpacing.verticalSpacing16,
                          RatingBar(
                            alignment: Alignment.center,
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star,
                            onRatingChanged: (value) {},
                          ),
                          AppSpacing.verticalSpacing8,
                          Text(
                            "Jonathon Mathew",
                            style: getBoldStyle(color: kTextBlackColor),
                          ),
                          AppSpacing.verticalSpacing8,
                          Text(
                            "Sports Wear Ltd. California, USA.",
                            style: getRegularStyle(color: k000000),
                          ),
                        ],
                      ),
                    ),
                    AppSpacing.verticalSpacing24,
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r8),
                      child: Image.network("https://media.istockphoto.com/id/1632091356/photo/happy-thanksgiving-holiday-greeting-card-handwriting-calligraphy-text-design-with-fall.jpg?s=1024x1024&w=is&k=20&c=l_-55iKmFpA3KxHaeMYdjOOb0F2ADYwFS-IJuc9si4U=",
                      height: 88, width: double.maxFinite,fit: BoxFit.fill),
                    ),
                    AppSpacing.verticalSpacing24,
                  ],
                ),
              ),
            );
  }
}
