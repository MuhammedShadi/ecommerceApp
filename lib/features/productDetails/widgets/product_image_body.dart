// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../../../core/constants.dart';
import '../../../core/utils/size_config.dart';
import '../../auth/presentation/manger/models/product.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  });

  final Product? product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
   int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(120),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product!.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product!.images.length,
                (index) => buildPreviewSmallImage(index))
          ],
        ),
      ],
    );
  }

  GestureDetector buildPreviewSmallImage(int index) {
    return GestureDetector(
      onTap: (){
        setState((){
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color:
                    selectedImage == index ? kPrimaryColor : Colors.transparent)),
        child: Image.asset(widget.product!.images[index]),
      ),
    );
  }
}
