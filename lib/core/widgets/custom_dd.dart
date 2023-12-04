import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utility/constants/custom_spacing.dart';

class CustomDD extends StatelessWidget {
  final dynamic givenValue;
  final String hintTxt;
  final List<DropdownMenuItem<dynamic>>? items;
  final Function(dynamic) onChangedFn;
  const CustomDD({
    super.key,
    required this.givenValue,
    required this.hintTxt,
    required this.items,
    required this.onChangedFn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(120.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<dynamic>(
          hint: Row(
            children: [
              addW(15),
              SvgPicture.asset(
                'assets/svgs/location_bg.svg',
              ),
              addW(20),
              Text(
                hintTxt,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          value: givenValue,
          isExpanded: true,
          icon: const Icon(Icons.arrow_drop_down),
          items: items,
          onChanged: onChangedFn,
        ),
      ),
    );
  }
}
