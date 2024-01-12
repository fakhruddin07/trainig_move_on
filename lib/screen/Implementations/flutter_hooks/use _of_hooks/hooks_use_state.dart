import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

@RoutePage()
class HooksUseState extends HookWidget {
  const HooksUseState({super.key});

  @override
  Widget build(BuildContext context) {
    const initialCount = 0;
    final counter = useState(initialCount);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Hooks useState',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s30,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: kBaseColor,
            onPressed: () {
              counter.value++;
            },
            child: const Icon(
              Icons.add,
              size: 24,
              color: kWhiteColor,
            ),
          ),
          AppSpacing.horizontalSpacing16,
          FloatingActionButton(
            backgroundColor: kBaseColor,
            onPressed: () {
              if(counter.value > 0) {
                counter.value--;
              }
            },
            child: const Icon(
              Icons.remove,
              size: 24,
              color: kWhiteColor,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You just tapped ${counter.value} times',
              style: getMediumStyle(
                color: kTextBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
