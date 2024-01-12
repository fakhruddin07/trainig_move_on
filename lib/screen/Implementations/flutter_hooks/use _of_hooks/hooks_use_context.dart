import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';

@RoutePage()
class HooksUseContext extends HookWidget {
  const HooksUseContext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Hooks useContext',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s22,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Center(
        child: display(),
      ),
    );
  }
}

display(){
  return Text(
    'Flutter Hooks useContext',
    style: DefaultTextStyle.of(useContext()).style.apply(fontSizeFactor: 1),
  );
}
