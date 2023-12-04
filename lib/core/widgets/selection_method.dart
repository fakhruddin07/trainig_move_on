import 'package:flutter/material.dart';
import '../../../utility/constants/custom_spacing.dart';

class SelectionMethod extends StatelessWidget {
  final VoidCallback onPress;
  bool isSelected;
  final String selectionName;

  SelectionMethod(
      {required this.selectionName,
      required this.onPress,
      required this.isSelected,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onPress,
          child: Icon(
            isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
            color: Colors.black,
          ),
        ),
        addW(12),
        Text(
          selectionName,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
