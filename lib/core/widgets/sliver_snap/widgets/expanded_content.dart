import 'package:flutter/material.dart';

class ExpandedContent extends StatelessWidget {

  final Widget? child;

  final Widget? leading;
  final Widget? trailing;

  const ExpandedContent({
    super.key,
    this.child,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (child != null) child!,
        if (leading != null)
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                leading!,
                trailing!,
              ],
            ),
          ),
      ],
    );
  }
}
