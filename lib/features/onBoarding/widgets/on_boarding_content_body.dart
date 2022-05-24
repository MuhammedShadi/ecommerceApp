import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/size_config.dart';


class OnBoardingContentBody extends StatelessWidget {
  const OnBoardingContentBody({Key? key,required this.text,required this.imagePath});
  final String? text;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "TOOT",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
         Text(
          text!,
           textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2,),
        Image.asset(
          imagePath!,
          width: getProportionateScreenWidth(265),
          height: getProportionateScreenHeight(235),
        ),
      ],
    );
  }
}
