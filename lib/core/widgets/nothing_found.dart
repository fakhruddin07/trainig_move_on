import 'package:flutter/material.dart';

class NothingFound extends StatelessWidget {
  const NothingFound({
    super.key,
    this.isSmall = false,
  });

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: isSmall ? 100 : MediaQuery.of(context).size.height * 0.25,
          //   child: Image.asset(
          //     'assets/images/no-item-box.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Text(
            'No item found',
            style: TextStyle(fontSize: isSmall ? 16  : 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
