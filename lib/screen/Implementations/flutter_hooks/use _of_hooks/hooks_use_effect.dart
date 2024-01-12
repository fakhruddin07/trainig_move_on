import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';

@RoutePage()
class HooksUseEffect extends HookWidget {
  const HooksUseEffect({super.key});

  @override
  Widget build(BuildContext context) {
    final _counte = useState(0);

    useEffect(
      () {
        final time = Timer.periodic(
          const Duration(seconds: 5),
          (timer) {
            _counte.value++;
          },
        );
        return time.cancel;
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Hooks useEffect',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s30,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Center(
        child: Text('${_counte.value}'),
      ),
    );
  }
}
