
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constants.dart';
import '../../../core/utils/size_config.dart';
import '../../auth/presentation/manger/models/product.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
    required this.product,required this.onTap,
  }) : super(key: key);

  final Product? product;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product!.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: product!.isFavourite
                  ? const Color(0xffffe6e6)
                  : const Color(0xfff5f6f9),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color: product!.isFavourite
                  ? const Color(0xffff4848)
                  : const Color(0xffd8dee4),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(15),
            right: getProportionateScreenWidth(74),
          ),
          child: Text(
            product!.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(15),
              vertical: getProportionateScreenWidth(5)),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              children: const [
                Text(
                  "See More Details",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kPrimaryColor,
                  size: 12,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}