import 'package:ecommerce/core/utils/size_config.dart';
import 'package:ecommerce/features/auth/presentation/pages/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/widgets/custom_button.dart';


class SuccessLoginBody extends StatelessWidget {
  const SuccessLoginBody({Key? key});
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
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          height: getProportionateScreenHeight(56),
          child: CustomGeneralButton(
            textButton: "Back to home",
            onTap: () {
              Get.to(() => const LoginView(), transition: Transition.fade);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
