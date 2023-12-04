import 'package:flutter/material.dart';
import 'package:training_moveon/screen/home_screen.dart';
import 'package:training_moveon/utility/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          onBackground: kWhiteColor,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
