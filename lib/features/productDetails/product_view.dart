// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/features/auth/presentation/manger/models/product.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/custom_icon_button.dart';
import 'widgets/product_details_body.dart';


class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key});

  static const routName = "/ProductDetails";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6f9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: CustomIconButton(iconData: Icons.arrow_back, onTap: () { Navigator.pop(context); },),
      ),
      body: const ProductDetailsBody(),
    );
  }

}

class ProductDetailsArguments {
  final Product? product;

  ProductDetailsArguments({required this.product});
}
