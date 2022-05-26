// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../home/home_view.dart';


class SuccessLoginBody extends StatelessWidget {
  const SuccessLoginBody({Key? key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
          width: double.infinity,
          fit:BoxFit.cover ,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          height: getProportionateScreenHeight(56),
          child: CustomGeneralButton(
            textButton: "Back to home",
            onTap: () {
              Get.to(() => const HomeView(), transition: Transition.fade);
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
