// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCategoriesOptions extends StatelessWidget {
  const HomeCategoriesOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoriesOptionsCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                onTap: () {
                  //
                }),
          ),
        ],
      ),
    );
  }
}

class CategoriesOptionsCard extends StatelessWidget {
  const CategoriesOptionsCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final String? icon, text;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(icon!),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox( height: getProportionateScreenWidth(20),child: Text(text!, textAlign: TextAlign.center)),
          ],
        ),
      ),
    );
  }
}
