// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/utils/size_config.dart';
import 'package:ecommerce/features/onBoarding/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  static const routName = "/onBoardingView";
  const OnBoardingView({Key? key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(

        body: OnBoardingViewBody());
  }
}
