// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../../../../core/utils/size_config.dart';
import 'home_section_scrollable_items.dart';

class SpecialOfferCardWithText extends StatelessWidget {
  const SpecialOfferCardWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionScrollableItems(
          text: 'Special for you',
          onTap: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                numbOfBrands: 18,
                onTap: () {},
                category: 'Smart Phone',
                image: 'assets/images/Image Banner 2.png',
              ),
              SpecialOfferCard(
                numbOfBrands: 18,
                onTap: () {},
                category: 'Smart Phone',
                image: 'assets/images/Image Banner 3.png',
              ),
              SpecialOfferCard(
                numbOfBrands: 18,
                onTap: () {},
                category: 'Smart Phone',
                image: 'assets/images/Image Banner 2.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numbOfBrands,
    required this.onTap,
  });

  final String? category, image;
  final int? numbOfBrands;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(10),
          right: getProportionateScreenWidth(10)),
      child: SizedBox(
        height: getProportionateScreenWidth(100),
        width: getProportionateScreenWidth(242),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    image!,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF343434).withOpacity(0.4),
                          const Color(0xFF343434).withOpacity(0.15),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical: getProportionateScreenWidth(10)),
                    child: Text.rich(
                      TextSpan(
                        style: const TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "$numbOfBrands Brands",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
