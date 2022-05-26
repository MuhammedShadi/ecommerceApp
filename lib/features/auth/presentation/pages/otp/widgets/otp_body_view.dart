// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/features/auth/presentation/pages/otp/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/size_config.dart';
import '../../login/widgets/login_view_body.dart';
import 'otp_form_body.dart';

class OtpBodyView extends StatefulWidget {
  const OtpBodyView({Key? key});

  @override
  State<OtpBodyView> createState() => _OtpBodyViewState();
}

class _OtpBodyViewState extends State<OtpBodyView> {
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
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              buildText("OTP Verification", Colors.black,
                  getProportionateScreenWidth(28), FontWeight.bold),
              buildText("We send your code to +0123123** ", Colors.black54,
                  getProportionateScreenWidth(15), FontWeight.w500),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildText("This code expire in ", Colors.black54,
                      getProportionateScreenWidth(10), FontWeight.w500),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0.0),
                    duration: const Duration(seconds: 30),
                    builder: (context, dynamic value, child) => Text(
                      "00:${value.toInt()}",
                      style: const TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              const OtpFormBody(),
              SizedBox(height: SizeConfig.screenHeight * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Get.to(() => const OtpView(),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 300));
                      });
                    },
                    child: Text(
                      "Resend OTP Code",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
