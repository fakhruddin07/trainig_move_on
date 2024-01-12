import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/Implementations/shared_preference_nd_stream/show_string/sp_string_plugin/sp_plugins.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../routes/app_router.gr.dart';

@RoutePage()
class SPAndStreamScreen1 extends StatefulWidget {
  const SPAndStreamScreen1({super.key});

  @override
  State<SPAndStreamScreen1> createState() => _SPAndStreamScreen1State();
}

class _SPAndStreamScreen1State extends State<SPAndStreamScreen1> {
  late SPStringPlugins spStringPlugins;

  @override
  void initState() {
    spStringPlugins.spGetData();
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
              "Shared Preferences and Stream 1st Screen",
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
            StreamBuilder<String>(
              stream: spStringPlugins.streamController.stream,
              builder: (context, AsyncSnapshot<String> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text(
                      "Rukozara, Sabar koro, koi dhakka mukki nehi karneka, Aramse!!!");
                } else if (snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else if (snapshot.hasData) {
                    return Text(snapshot.data ?? "");
                  } else {
                    return const Text("DATA");
                  }
                } else {
                  return const Text("DATA");
                }
              },
            ),
            AppSpacing.verticalSpacing8,
            ElevatedButton(
              onPressed: () {
               context.router.push( const SPAndStreamRoute2());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBaseColor,
              ),
              child: Text(
                "Shared Preferences and Stream 2nd Screen",
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
