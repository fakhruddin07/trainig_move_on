import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/screen/auth/auth_controller/auth_controller.dart';
import 'package:training_moveon/screen/routes/app_router.gr.dart';
import 'package:training_moveon/utility/constants/langauge_manager.dart';
import 'package:training_moveon/utility/helpers/validator_logic.dart';

import '../../core/widgets/forms/form_field_wrapper.dart';
import '../../core/widgets/forms/k_text_field.dart';
import '../../core/widgets/headline_2.dart';
import '../../utility/constants/app_spacing.dart';
import '../../utility/constants/asset_manger.dart';
import '../../utility/constants/colors.dart';
import '../../utility/constants/font_manager.dart';
import '../../utility/constants/style_manager.dart';
import '../../utility/constants/values_manager.dart';
import '../agent_app/products/products_widgets/products_button_widget.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool selectValue = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.verticalSpacing32,
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
                'Join with us & become a Shipping Hero!',
                style: getBoldStyle(color: kTextBlackColor, fontSize: 24),
              ),
              AppSpacing.verticalSpacing24,
              const HeadLine2(
                text: "Sign Up",
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
                  validator: (text) => ValidatorLogic.requiredEmail(
                      _emailTEController.text.trim()),
                ),
              ),
              AppSpacing.verticalSpacing16,
              FormFieldWrapper(
                label: "Password",
                fontSize: FontSize.s16,
                color: k6B717A,
                isRequired: false,
                child: KTextField(
                  inputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  controller: _passwordTEController,
                  hintText: "Enter password",
                  hintColor: kA0A0A0,
                  obscureText: true,
                  validator: (text) => ValidatorLogic.requiredPassword(
                    _passwordTEController.text,
                  ),
                ),
              ),
              AppSpacing.verticalSpacing16,
              FormFieldWrapper(
                label: "Confirm Password",
                fontSize: FontSize.s16,
                color: k6B717A,
                isRequired: false,
                child: KTextField(
                  inputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  controller: _confirmPasswordTEController,
                  hintText: "Enter confirm password",
                  hintColor: kA0A0A0,
                  obscureText: true,
                  validator: (String? text) => ValidatorLogic.requiredPassword(
                    _passwordTEController.text,
                  ),
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
                    "I agree with this ",
                    style: getRegularStyle(color: k707070),
                  ),
                  InkWell(
                    onTap: () {},
                    splashFactory: NoSplash.splashFactory,
                    radius: 0,
                    child: const Text(
                      "terms and conditions",
                      style: TextStyle(
                        color: kBaseColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.verticalSpacing24,
              ProductsButtonWidget(
                btnHeight: AppSize.s40,
                btnWidth: double.maxFinite,
                onPressed: () {
                  /*if(!_formKey.currentState!.validate()){
                    AuthController.setUserEmail(_emailTEController.text.toString(),);}*/
                  if (!_formKey.currentState!.validate()) {
                    AuthController.setUserEmail(_emailTEController.text);
                    AuthController.setUserPass(_passwordTEController.text);
                    /*context.router.push(
                      SignInRoute(
                        onResult: (result) {
                          if(result == true){
                            resolver.next(true);
                            router.removeLast();
                          }
                        },
                      ),
                    );*/
                  }
                },
                btnBgColor: kBaseColor,
                btnBorderRadius: AppRadius.r6,
                child: Text(
                  "Sign Up",
                  style: getSemiBoldStyle(color: kWhiteColor),
                ),
              ),
              AppSpacing.verticalSpacing12,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: getRegularStyle(color: k6B717A),
                  ),
                  InkWell(
                    onTap: () {
                      // context.router.push(SignInRoute());
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Sign In",
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
