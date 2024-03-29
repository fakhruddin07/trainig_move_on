import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_json_data/sp_json_plugin/sp_json_plugin.dart';
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_json_data/stream_data/object_data.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../routes/app_router.gr.dart';

@RoutePage()
class StreamJsonOne extends StatefulWidget {
  const StreamJsonOne({super.key});

  @override
  State<StreamJsonOne> createState() => _StreamJsonOneState();
}

class _StreamJsonOneState extends State<StreamJsonOne> {
  SpJsonPlugin spJsonPlugin = SpJsonPlugin();

  @override
  void initState() {
    spJsonPlugin.getJson();
    super.initState();
  }

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
              "SP and Stream with Json 1st Screen",
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
            StreamBuilder<Person>(
              stream: spJsonPlugin.spJsonDataController.stream,
              builder: (context, AsyncSnapshot<Person> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text(
                    "Rukozara, Sabar koro, koi dhakka mukki nehi karneka, Aramse!!!",
                  );
                } else if (snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else if (snapshot.hasData) {
                    return Column(
                      children: [
                        Text(snapshot.data?.name ?? ""),
                        Text(snapshot.data?.age.toString() ?? ""),
                      ],
                    );
                  } else {
                    return const Text("no data");
                  }
                } else {
                  return const Text("NO DATA");
                }
              },
            ),
            AppSpacing.verticalSpacing8,
            ElevatedButton(
              onPressed: () {
                context.router.push(const StreamJsonTwo());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "SP and Stream with Json 2nd Screen",
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
