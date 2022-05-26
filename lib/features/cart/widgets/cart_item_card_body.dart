// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/constants.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/size_config.dart';
import '../../auth/presentation/manger/models/cart.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart
  });
  final Cart? cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 1.5,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xfff5f6f9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(cart!.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart!.product.title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${cart!.product.price}",
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                      text: " x${cart!.numOfItem}",
                      style: const TextStyle(color: kTextColor)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
