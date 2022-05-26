// ignore_for_file: use_key_in_widget_constructors
import 'package:ecommerce/features/auth/presentation/manger/models/product.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/custom_app_bar.dart';
import 'widgets/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key});

  static const routName = "/ProductDetails";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return  Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: arguments.product!.rating),
      ),
      body:  ProductDetailsBody(product: arguments.product,),
    );
  }
}

class ProductDetailsArguments {
  final Product? product;

  ProductDetailsArguments({required this.product});
}
