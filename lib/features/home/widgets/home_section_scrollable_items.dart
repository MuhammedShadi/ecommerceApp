// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../../../../core/utils/size_config.dart';

class SectionScrollableItems extends StatelessWidget {
  const SectionScrollableItems({
    Key? key,required this.text,required this.onTap,
  });
  final String? text;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.black),
          ),
          GestureDetector(
            onTap: onTap,
            child: const Text(
              "See More",
            ),
          ),
        ],
      ),
    );
  }
}