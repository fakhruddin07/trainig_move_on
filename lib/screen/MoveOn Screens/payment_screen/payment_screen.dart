import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/MoveOn%20Screens/payment_screen/payment_widget/payment_method.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

import '../../../common_widgets/button_widget.dart';

@RoutePage()
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Screen',
          style: getBoldStyle(
            color: kWhiteColor,
            fontSize: FontSize.s30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              buttonTitle: "Payment Method",
              onTap: () {
                // context.router.push(PaymentMethod());
              },
            ),
          ],
        ),
      ),
    );
  }
}
