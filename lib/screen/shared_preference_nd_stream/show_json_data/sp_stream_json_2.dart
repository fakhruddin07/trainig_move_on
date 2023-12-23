import 'package:flutter/material.dart';
import 'package:training_moveon/screen/shared_preference_nd_stream/show_json_data/sp_json_plugin/sp_json_plugin.dart';
import 'package:training_moveon/screen/shared_preference_nd_stream/show_json_data/sp_stream_json_1.dart';
import 'package:training_moveon/screen/shared_preference_nd_stream/show_json_data/stream_data/object_data.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

class SpStreamJson2 extends StatefulWidget {
  const SpStreamJson2({super.key});

  @override
  State<SpStreamJson2> createState() => _SpStreamJson2State();
}

class _SpStreamJson2State extends State<SpStreamJson2> {
  Person p1 = Person(name: "Fakhruddin Noman", age: 31);
  SpJsonPlugin spJsonPlugin = SpJsonPlugin();

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
              "SP and Stream with Json 2nd Screen",
              style: getBoldStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s16,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            spJsonPlugin.setJson(p1);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SpStreamJson1(),
              ),
            );
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
      ),
    );
  }
}
