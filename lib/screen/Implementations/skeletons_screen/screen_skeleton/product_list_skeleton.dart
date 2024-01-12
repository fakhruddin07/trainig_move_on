import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';

@RoutePage()
class ProductListSkeleton extends StatefulWidget {
  const ProductListSkeleton({super.key});

  @override
  State<ProductListSkeleton> createState() => _ProductListSkeletonState();
}

class _ProductListSkeletonState extends State<ProductListSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skeletons Screen', style: getBoldStyle(color: kWhiteColor, fontSize: FontSize.s30),),
        backgroundColor: kBaseColor,
      ),
    );
  }
}
