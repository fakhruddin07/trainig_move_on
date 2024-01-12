import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';

@RoutePage()
class HooksUseValueChanged extends HookWidget {
  const HooksUseValueChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Hooks useValueChanged',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s22,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Center(

      ),
    );
  }
}
