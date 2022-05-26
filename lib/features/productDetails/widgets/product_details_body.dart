// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/utils/size_config.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/features/auth/presentation/manger/models/product.dart';
import 'package:ecommerce/features/productDetails/widgets/product_colored_dots.dart';
import 'package:ecommerce/features/productDetails/widgets/product_image_body.dart';
import 'package:ecommerce/features/productDetails/widgets/product_item_details_body.dart';
import 'package:ecommerce/features/productDetails/widgets/product_rounded_conatiner_body.dart';
import 'package:flutter/material.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({Key? key, required this.product});

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        RoundedContainer(
          color: Colors.white,
          widget: SingleChildScrollView(
            child: Column(
              children: [
                ProductDetails(
                  product: product,
                  onTap: () {},
                ),
                RoundedContainer(
                    color: const Color(0xfff6f7f9),
                    widget: Column(
                      children: [
                        ProductColoredDots(product: product),
                        RoundedContainer(
                          color: Colors.white,
                          widget: Padding(
                            padding: EdgeInsets.only(
                                top: getProportionateScreenWidth(10),
                                left: SizeConfig.screenWidth * 0.15,
                                right: SizeConfig.screenWidth * 0.15),
                            child: SizedBox(
                                height: getProportionateScreenWidth(50),
                                child: CustomGeneralButton(
                                    textButton: "Add To Chart", onTap: () {})),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
