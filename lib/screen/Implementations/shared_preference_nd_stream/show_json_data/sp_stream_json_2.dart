import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_json_data/sp_json_plugin/sp_json_plugin.dart';
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_json_data/stream_data/object_data.dart';
import 'package:training_moveon/screen/routes/app_router.gr.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

@RoutePage()
class StreamJsonTwo extends StatefulWidget {
  const StreamJsonTwo({super.key});

  @override
  State<StreamJsonTwo> createState() => _StreamJsonTwoState();
}

class _StreamJsonTwoState extends State<StreamJsonTwo> {
  Person p1 = Person(name: "F. A. Noman", age: 31000);
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
            context.router.push(const StreamJsonOne());
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
