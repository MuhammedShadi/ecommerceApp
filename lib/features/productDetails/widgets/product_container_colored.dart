// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../core/constants.dart';
import '../../../core/utils/size_config.dart';

class BuildColoredContainer extends StatelessWidget {
  const BuildColoredContainer({
    Key? key,
    required this.color,
    this.isSelected = false,
  });

  final Color? color;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
        Border.all(color: isSelected! ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color!, shape: BoxShape.circle),
      ),
    );
  }
}