// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'home_discount_banner.dart';
import 'home_header_content.dart';
import 'home_product_card.dart';
import 'home_categories_options.dart';
import 'home_special_offer_card.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(10)),
          const HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(10)),
          const HomeDiscountBanner(),
          SizedBox(height: getProportionateScreenWidth(10)),
          const HomeCategoriesOptions(),
          SizedBox(height: getProportionateScreenWidth(10)),
          const SpecialOfferCardWithText(),
          SizedBox(height: getProportionateScreenWidth(10)),
          const ProductCardWithText(),
          SizedBox(height: getProportionateScreenWidth(10)),
        ],
      ),
    ));
  }
}


