import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';

@RoutePage()
class HooksUseRef extends HookWidget {
  const HooksUseRef({super.key});

  @override
  Widget build(BuildContext context) {

    final controllerText = useTextEditingController(text: '');
    // final inputText = useState('');
    final inputText = useRef('');

    useEffect((){
      controllerText.addListener(() {
        inputText.value = controllerText.text;
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Hooks useRef',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s22,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(inputText.value),
              AppSpacing.verticalSpacing16,
              KTextField(controller: controllerText, hintText: "Enter here",)
            ],
          ),
        ),
      ),
    );
  }
}
