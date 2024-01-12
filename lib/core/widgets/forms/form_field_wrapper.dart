import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';

import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/colors.dart';


class FormFieldWrapper extends StatelessWidget {
  const FormFieldWrapper({
    super.key,
    required this.label,
    required this.isRequired,
    required this.child,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 14,
    this.color = k4D4D4D,
  });

  final String label;
  final bool isRequired;
  final Widget child;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: label,
                style: TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color,),
              ),
              isRequired?const TextSpan(
                text: '*',
                style: TextStyle(
                    fontWeight: FontWeightManager.regular,
                    fontSize: FontSize.s14,
                    color: Colors.red),
              ): const TextSpan(
                text: '',
              ),
            ],
          ),
        ),
        AppSpacing.verticalSpacing8,
        child,
      ],
    );
  }
}
