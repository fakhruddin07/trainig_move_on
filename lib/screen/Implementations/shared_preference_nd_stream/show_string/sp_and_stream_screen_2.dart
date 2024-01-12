import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_string/sp_string_plugin/sp_plugins.dart';
import 'package:training_moveon/screen/routes/app_router.gr.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

@RoutePage()
class SPAndStreamScreen2 extends StatefulWidget {
  const SPAndStreamScreen2({super.key});

  @override
  State<SPAndStreamScreen2> createState() => _SPAndStreamScreen2State();
}

class _SPAndStreamScreen2State extends State<SPAndStreamScreen2> {
  late SPStringPlugins spStringPlugins;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
              ),
            ),
            AppSpacing.horizontalSpacing8,
            Text(
              "Shared Preferences and Stream 2nd Screen",
              style: getBoldStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s16,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: textEditingController,
              ),
            ),
            AppSpacing.verticalSpacing8,
            ElevatedButton(
              onPressed: () async {
                context.router.push(const SPAndStreamRoute1());
                await spStringPlugins.spSetData(textEditingController.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Save",
                style: getBoldStyle(
                  color: kWhiteColor,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
