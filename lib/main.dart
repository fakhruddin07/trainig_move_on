import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/routes/app_router.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        scaffoldBackgroundColor: kWhiteColor,
        splashFactory: NoSplash.splashFactory,
        highlightColor: kTransparent,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            backgroundColor: kBaseColor,
            shadowColor: kTransparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.r4),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: kWhiteColor,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kDDDDDD),
            borderRadius: BorderRadius.circular(AppRadius.r4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kDDDDDD),
            borderRadius: BorderRadius.circular(AppRadius.r4),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: kDDDDDD),
            borderRadius: BorderRadius.circular(AppRadius.r4),
          ),
        ),
        appBarTheme: const AppBarTheme(
          color: kBaseColor,
          shadowColor: kTransparent,
          //toolbarHeight: 30
          titleTextStyle: TextStyle(
            fontSize: AppSize.s16,
            fontWeight: FontWeight.w700,

          ),
        ),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kTextBlackColor,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: kBaseColor,
          primary: kBaseColor,
          secondary: const Color(0xFFFFFFFF),
          background: const Color(0xFF121212),
        ),
        primaryColor: Colors.yellow,
        useMaterial3: true,
      ),
      routerConfig: appRouter.config(),
      /*routerDelegate: AutoRouterDelegate.declarative(
        appRouter,
        routes: (_) => [
          // if(){}
        ],
      ),*/
    );
  }
}
