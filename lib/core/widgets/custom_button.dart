// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../constants.dart';
import '../utils/size_config.dart';
class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key,required this.textButton,required this.onTap});
  final String? textButton;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: onTap,
      color: kPrimaryColor,
      child: Text(
        textButton!,
        style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}
