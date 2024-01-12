import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';

@RoutePage()
class HooksUseMemoized extends HookWidget {
  const HooksUseMemoized({super.key});

  @override
  Widget build(BuildContext context) {
    final count = useState(0);
    count.value++;

    Future<String> fetchData() async{
      await Future.delayed(const Duration(seconds: 1));
      return "Data Just Fetched ${count.value}";
    }

    final future = useMemoized(fetchData, [count.value]);
    final snapShot = useFuture(future);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Hooks useMemoized',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s22,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Center(
        child: snapShot.hasData ? Text('${snapShot.data}') : const CircularProgressIndicator(),
      ),
    );
  }
}
