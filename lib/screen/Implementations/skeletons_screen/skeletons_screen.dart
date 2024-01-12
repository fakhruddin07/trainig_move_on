import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../common_widgets/button_widget.dart';
import '../../routes/app_router.gr.dart';

@RoutePage()
class SkeletonsScreen extends StatelessWidget {
  const SkeletonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skeletons Screen', style: getBoldStyle(color: kWhiteColor, fontSize: FontSize.s30),),
        backgroundColor: kBaseColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              buttonTitle: "Product Detail Skeletons",
              onTap: () {
                context.router.push(const ProductDetailSkeletons());
              },
            ),
            AppSpacing.verticalSpacing2,
            ButtonWidget(
              buttonTitle: "Product List Skeletons",
              onTap: () {
                context.router.push(const ProductListSkeleton());
              },
            ),
          ],
        ),
      ),
    );
  }
}
