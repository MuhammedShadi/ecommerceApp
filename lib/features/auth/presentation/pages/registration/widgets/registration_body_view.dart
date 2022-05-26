// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/features/auth/presentation/pages/registration/widgets/registeration_form_body.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/widgets/custom_soical_icon.dart';
import '../../login/widgets/login_view_body.dart';

class RegistrationViewBody extends StatefulWidget {
  const RegistrationViewBody({Key? key});

  @override
  State<RegistrationViewBody> createState() => _RegistrationViewBodyState();
}

class _RegistrationViewBodyState extends State<RegistrationViewBody> {
  String? email;

  String? password;

  bool? remember = false;

  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

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
                  buildText("Register Account", Colors.black,
                      getProportionateScreenWidth(28), FontWeight.bold),
                  buildText(
                      "Complete your productDetails \n or continue with social media accounts",
                      Colors.black54,
                      getProportionateScreenWidth(10),
                      FontWeight.w500),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                 const RegistrationFormBody(),
                  SizedBox(height: SizeConfig.screenHeight * 0.06),
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
                    buildText("By continue your confirmation that you agree \n with our Term and Conditions",Colors.black26,getProportionateScreenWidth(15),FontWeight.w400),
                  ],),
                ],
              ),
            ),
          ),
        ));
  }
}
