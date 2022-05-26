// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../utils/size_config.dart';

class CustomIconBtnWithCounter extends StatelessWidget {
  const CustomIconBtnWithCounter({
    Key? key,required this.onTap,required this.iconPath,this.numOfItems = 0,
  });
  final GestureTapCallback? onTap;
  final String? iconPath;
  final int? numOfItems;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            width: getProportionateScreenWidth(46),
            height: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(iconPath!),
          ),
          if(numOfItems!=0)
          Positioned(
            top: -2,
            right: -1,
            child: Container(
              width: getProportionateScreenWidth(16),
              height: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: const Color(0xffff4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Text(
                "$numOfItems",
                style: TextStyle(
                    color: Colors.white,
                    height: 1.3,
                    fontSize: getProportionateScreenWidth(10),
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}