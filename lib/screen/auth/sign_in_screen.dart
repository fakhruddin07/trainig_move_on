import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/forms/form_field_wrapper.dart';
import 'package:training_moveon/core/widgets/forms/k_text_field.dart';
import 'package:training_moveon/core/widgets/headline_2.dart';
import 'package:training_moveon/screen/auth/auth_controller/auth_controller.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

import '../agent_app/products/products_widgets/products_button_widget.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  final Function(bool?) onResult;
  const SignInScreen({super.key, required this.onResult});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool selectValue = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  _signIn() {
    String email = _emailTEController.text.trim();
    String password = _passwordTEController.text.trim();

    if (email == AuthController.userEmail && password == AuthController.userPass) {
      widget.onResult.call(true);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Invalid email or password!',
            style: getBoldStyle(
              color: kBadgeColor,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16, vertical: AppPadding.p70),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  alignment: Alignment.centerRight,
                  ImageAssets.welcomeLogoPng,
                  height: 312,
                  fit: BoxFit.fill,
                  width: 280,
                ),
              ),
              Text(
                'Welcome back, Shipping Hero!',
                style: getBoldStyle(color: kTextBlackColor, fontSize: 24),
              ),
              AppSpacing.verticalSpacing24,
              const HeadLine2(
                text: "Sign In",
                textColor: kTextBlackColor,
                fontSize: FontSize.s16,
                fontWeight: FontWeightManager.bold,
              ),
              AppSpacing.verticalSpacing16,
              FormFieldWrapper(
                label: "Email address",
                fontSize: FontSize.s16,
                color: k6B717A,
                isRequired: false,
                child: KTextField(
                  inputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  controller: _emailTEController,
                  hintText: "Enter valid email address",
                  hintColor: kA0A0A0,
                ),
              ),
              AppSpacing.verticalSpacing16,
              FormFieldWrapper(
                label: "Password",
                fontSize: FontSize.s16,
                color: k6B717A,
                isRequired: false,
                child: KTextField(
                  inputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  controller: _passwordTEController,
                  hintText: "Enter password",
                  hintColor: kA0A0A0,
                  obscureText: true,
                ),
              ),
              AppSpacing.verticalSpacing16,
              Row(
                children: [
                  SizedBox(
                    height: AppPadding.p18,
                    width: AppPadding.p18,
                    child: Checkbox(
                      value: selectValue,
                      onChanged: (value) {
                        selectValue = value!;
                        setState(() {});
                      },
                      activeColor: kBaseColor,
                      splashRadius: 0,
                      side: const BorderSide(color: kDDDDDD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.r2),
                      ),
                    ),
                  ),
                  AppSpacing.horizontalSpacing8,
                  Text(
                    "Remember me",
                    style: getRegularStyle(color: k707070),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    splashFactory: NoSplash.splashFactory,
                    radius: 0,
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: kBaseColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpacing32,
              ProductsButtonWidget(
                btnHeight: AppSize.s40,
                btnWidth: double.maxFinite,
                onPressed: () {
                  _signIn();
                  AuthController.setUserEmail(_emailTEController.text);
                  AuthController.setUserPass(_passwordTEController.text);
                },
                btnBgColor: kBaseColor,
                btnBorderRadius: AppRadius.r6,
                child: Text(
                  "Sign In",
                  style: getSemiBoldStyle(color: kWhiteColor),
                ),
              ),
              AppSpacing.verticalSpacing16,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: getRegularStyle(color: k6B717A),
                  ),
                  InkWell(
                    onTap: () {
                      context.router.push(const SignUpRoute());
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: kBaseColor,
                        fontSize: FontSize.s14,
                        fontWeight: FontWeightManager.regular,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
