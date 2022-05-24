import 'package:ecommerce/features/auth/presentation/pages/completeProfile/widgets/complete_registeration_form_body.dart';
import 'package:ecommerce/features/auth/presentation/pages/registration/widgets/registeration_form_body.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/size_config.dart';
import '../../login/widgets/login_view_body.dart';

class CompleteProfileBody extends StatefulWidget {
  const CompleteProfileBody({Key? key});

  @override
  State<CompleteProfileBody> createState() => _CompleteProfileBodyState();
}

class _CompleteProfileBodyState extends State<CompleteProfileBody> {
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
                  buildText("Complete Profile", Colors.black,
                      getProportionateScreenWidth(28), FontWeight.bold),
                  buildText(
                      "Complete your details \n or continue with social media accounts",
                      Colors.black54,
                      getProportionateScreenWidth(10),
                      FontWeight.w500),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  const CompleteRegisterationFormBody(),
                  SizedBox(height: SizeConfig.screenHeight * 0.06),
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
