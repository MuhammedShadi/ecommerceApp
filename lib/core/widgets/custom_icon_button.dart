// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../../../core/utils/size_config.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key,required this.iconData,required this.onTap});
  final IconData? iconData;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(55)),
        onPressed: onTap,
        child:  Icon(iconData!),
      ),
    );
  }
}
