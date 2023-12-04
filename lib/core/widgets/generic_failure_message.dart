import 'package:flutter/material.dart';

import '../../../utility/constants/color_manager.dart';

class GenericFailureMessage extends StatelessWidget {
  const GenericFailureMessage(
      {super.key, required this.message, required this.onPress});

  final String message;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OutlinedButton(
            onPressed: onPress,
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: ColorManager.colorPrimaryLight),
            ),
            child: Text(
              "Retry",
              style: TextStyle(color: ColorManager.colorPrimaryLight),
            )),
        const SizedBox(
          height: 8,
        ),
        Text(
          message,
          style: TextStyle(fontSize: 15, color: ColorManager.colorBlack),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
