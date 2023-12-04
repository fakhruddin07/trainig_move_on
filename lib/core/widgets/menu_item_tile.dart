import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utility/constants/colors.dart';

class MenuItemTile extends StatelessWidget {
  const MenuItemTile({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onPressed,
  });

  final String title;
  final String iconPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      minLeadingWidth: 20,
      onTap: onPressed,
      leading: SvgPicture.asset(
        iconPath,
        color: kBaseColor2,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: kBlackColor,
        ),
      ),
    );
  }
}
