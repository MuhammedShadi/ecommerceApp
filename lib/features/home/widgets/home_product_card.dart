// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../auth/presentation/manger/models/product.dart';
import '../../productDetails/product_view.dart';
import 'home_section_scrollable_items.dart';
import '../../../../../../core/constants.dart';
import '../../../../../../core/utils/size_config.dart';


class ProductCardWithText extends StatelessWidget {
  const ProductCardWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SectionScrollableItems(
        text: 'Popular Products',
        onTap: () {},
      ),
      SizedBox(height: getProportionateScreenWidth(10)),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(demoProducts.length,
                    (index) => ProductCard(product: demoProducts[index], onTap: () {
                      Get.to(const ProductDetailsView(),transition: Transition.fade,arguments: demoProducts[index]);
                    },)),
            SizedBox(width: getProportionateScreenWidth(20)),
          ],
        ),
      ),
    ],);
  }
}



class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140.0,
    this.aspectRation = 1.02,
    required this.product,required this.onTap,
  });

  final double? width, aspectRation;
  final Product? product;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: getProportionateScreenWidth(width!),
          height: getProportionateScreenWidth(220),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRation!,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product!.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: getProportionateScreenWidth(40),
                child: Text(
                  product!.title,
                  style: const TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product!.price}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                        fontSize: getProportionateScreenWidth(15)),
                    maxLines: 2,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      width: getProportionateScreenWidth(28),
                      height: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: product!.isFavourite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product!.isFavourite
                            ? const Color(0xffff4848)
                            : const Color(0xffdbdee4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}