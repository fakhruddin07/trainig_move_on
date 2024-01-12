import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

@RoutePage()
class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  bool selectValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Orders',
          style: getBoldStyle(color: kWhiteColor, fontSize: FontSize.s30),
        ),
        backgroundColor: kBaseColor,
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: 1,
        separatorBuilder: (context, index) => const Divider(
          thickness: AppSize.s8,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: AppPadding.p16,
              right: AppPadding.p16,
              bottom: AppPadding.p24,
              left: AppPadding.p16,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppSize.s18,
                      width: AppSize.s18,
                      child: Checkbox(
                        value: selectValue,
                        onChanged: (value) {
                          selectValue = value!;
                          setState(() {});
                        },
                        activeColor: kBaseColor,
                        splashRadius: 0,
                        side: const BorderSide(color: kDDDDDD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadius.r2),
                        ),
                      ),
                    ),
                    AppSpacing.horizontalSpacing10,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Order: 215681347', style: getBoldStyle(color: kTextBlackColor,),),
                        AppSpacing.verticalSpacing8,
                        Text('data', style: getRegularStyle(color: k707070),),
                      ],
                    ),
                    AppSpacing.horizontalSpacing8,
                    Image.asset(ImageAssets.truckPng, height: 24, width: 24,),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
