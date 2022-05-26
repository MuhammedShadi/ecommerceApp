// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../../../../core/utils/size_config.dart';
import 'forget_password_form_body.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPasswordFormBody(),
            ],
          ),
        ),
      ),
    );
  }
}
