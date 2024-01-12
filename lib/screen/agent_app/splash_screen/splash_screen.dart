import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_image.dart';
import 'package:training_moveon/screen/home/home_screen.dart';
import 'package:training_moveon/screen/routes/app_router.gr.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              imgUrl: 'https://source.unsplash.com/random?sig=0',
              imgHeight: 300,
              imgWidth: 300,
              imgFit: BoxFit.fill,
            ),
            AppSpacing.verticalSpacing48,
            Text(
              'Welcome here and be a Shopping Hero',
              style: getBoldStyle(
                color: kTextBlackColor,
                fontSize: FontSize.s16,
              ),
            ),
            AppSpacing.verticalSpacing20,
            TextButton(
              onPressed: () {
                context.router.push(const HomeRoute());
              },
              child: Text(
                'Home Screen',
                style: getBoldStyle(color: kTextBlackColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
