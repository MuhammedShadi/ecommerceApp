// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/features/productDetails/widgets/product_container_colored.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/size_config.dart';
import '../../../core/widgets/custom_icon_button.dart';
import '../../auth/presentation/manger/models/product.dart';

class ProductColoredDots extends StatelessWidget {
  const ProductColoredDots({
    Key? key,
    required this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    int isColorSelected = 0;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Row(
        children: [
          ...List.generate(
            product!.colors.length,
                (index) => BuildColoredContainer(
              color: product!.colors[index],
              isSelected: isColorSelected == index,
            ),
          ),
          const Spacer(),
          CustomIconButton(icon: Icons.add, press: (){}),
          const SizedBox(width: 5),
          CustomIconButton(icon: Icons.remove, press: (){}),
        ],
      ),
    );
  }
}