import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: Image.asset(
            'assets/images/png/base_screen/no-internet.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'No Internet',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ));
  }
}
