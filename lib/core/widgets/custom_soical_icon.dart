import 'package:ecommerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialIcon extends StatelessWidget {
  const CustomSocialIcon({Key? key, required this.iconPath,required this.onTap});

  final String? iconPath;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        padding: EdgeInsets.all(getProportionateScreenWidth(7)),
        decoration:
            const BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(iconPath!),
      ),
    );
  }
}
