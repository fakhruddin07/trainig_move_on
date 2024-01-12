import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/forms/form_field_wrapper.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../common_widgets/button_widget.dart';

@RoutePage()
class DioPostMethod extends StatefulWidget {
  const DioPostMethod({super.key});

  @override
  State<DioPostMethod> createState() => _DioPostMethodState();
}

class _DioPostMethodState extends State<DioPostMethod> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _bodyTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBaseColor,
        title: Text(
          "Dio POST Method",
          style: getBoldStyle(
            color: kTextBlackColor,
            fontSize: FontSize.s30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FormFieldWrapper(
              label: "Title",
              fontSize: FontSize.s16,
              fontWeight: FontWeightManager.bold,
              color: kTextBlackColor,
              isRequired: false,
              child: KTextField(
                controller: _titleTEController,
                hintText: "Title",
              ),
            ),
            AppSpacing.verticalSpacing16,
            FormFieldWrapper(
              label: "Body",
              fontSize: FontSize.s16,
              fontWeight: FontWeightManager.bold,
              color: kTextBlackColor,
              isRequired: false,
              child: KTextField(
                controller: _bodyTEController,
                hintText: "Body",
              ),
            ),
            AppSpacing.verticalSpacing16,
            SizedBox(
              width: double.maxFinite,

              child: ButtonWidget(
                buttonTitle: "Add",
                onTap: () {
                  context.router.push(DioGetMethod());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
