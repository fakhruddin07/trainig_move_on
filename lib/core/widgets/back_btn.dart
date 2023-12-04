import 'package:flutter/material.dart';


class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        width: 45,
        height: 45,
        padding: const EdgeInsets.only(left: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
      ),
    );
  }
}
