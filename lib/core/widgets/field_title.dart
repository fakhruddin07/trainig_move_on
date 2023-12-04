import 'package:flutter/material.dart';

class FieldTitle extends StatelessWidget {
  final String titleTxt;
  const FieldTitle({
    super.key,
    required this.titleTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        titleTxt,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
