import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/routes/app_router.gr.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../common_widgets/button_widget.dart';

@RoutePage()
class PracticeFlutterHooks extends StatefulWidget {
  const PracticeFlutterHooks({super.key});

  @override
  State<PracticeFlutterHooks> createState() => _PracticeFlutterHooksState();
}

class _PracticeFlutterHooksState extends State<PracticeFlutterHooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practice Flutter Hooks",
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s30,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              buttonTitle: "Hooks useState",
              onTap: () {
                context.router.push(const HooksUseState());
              },
            ),
            AppSpacing.verticalSpacing4,
            ButtonWidget(
              buttonTitle: "Hooks useEffect",
              onTap: () {
                context.router.push(const HooksUseEffect());
              },
            ),
            AppSpacing.verticalSpacing4,
            ButtonWidget(
              buttonTitle: "Hooks useMemoized",
              onTap: () {
               context.router.push(const HooksUseMemoized());
              },
            ),
            AppSpacing.verticalSpacing4,
            ButtonWidget(
              buttonTitle: "Hooks useRef",
              onTap: () {
                // context.router.push(const HooksUseRef());
              },
            ),
            AppSpacing.verticalSpacing4,
            ButtonWidget(
              buttonTitle: "Hooks useCallBack",
              onTap: () {
                context.router.push(const HooksUseCallBack());
              },
            ),
            AppSpacing.verticalSpacing4,
            ButtonWidget(
              buttonTitle: "Hooks useContext",
              onTap: () {
                context.router.push(const HooksUseContext());
              },
            ),
            AppSpacing.verticalSpacing4,
            ButtonWidget(
              buttonTitle: "Hooks useValueChanged",
              onTap: () {
                context.router.push(const HooksUseValueChanged());
              },
            ),
          ],
        ),
      ),
    );
  }
}
