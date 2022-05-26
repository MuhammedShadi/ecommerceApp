// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/utils/size_config.dart';
import 'package:ecommerce/core/widgets/custom_soical_icon.dart';
import 'package:ecommerce/features/auth/presentation/pages/login/widgets/login_form_body.dart';
import 'package:ecommerce/features/auth/presentation/pages/registration/registeration_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              buildText("Welcome Back", Colors.black,
                  getProportionateScreenWidth(28), FontWeight.bold),
              buildText(
                  "Sign in with your mail and password \n or continue with social media accounts",
                  Colors.black54,
                  getProportionateScreenWidth(10),
                  FontWeight.w500),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const LoginFormBody(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSocialIcon(
                    iconPath: "assets/icons/google-icon.svg",
                    onTap: () {},
                  ),
                  CustomSocialIcon(
                    iconPath: "assets/icons/facebook-2.svg",
                    onTap: () {},
                  ),
                  CustomSocialIcon(
                    iconPath: "assets/icons/twitter.svg",
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              Row(
              mainAxisAlignment: MainAxisAlignment.center
              ,children: [
                buildText("Don't have an account?",Colors.black26,getProportionateScreenWidth(15),FontWeight.w400),
                  GestureDetector(
                    onTap: (){
                      Get.to(() => const RegistrationView(), transition: Transition.fade);
                    },
                    child: buildText(" Sign Up", kPrimaryColor,
                        getProportionateScreenWidth(15), FontWeight.w200),
                  ),
                ],),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget buildText(
    String text, Color color, double fontSize, FontWeight fontWeight) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    textAlign: TextAlign.center,
  );
}
