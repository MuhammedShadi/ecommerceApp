import 'package:ecommerce/features/cart/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/widgets/Custom_search_field.dart';
import '../../../../../../core/widgets/custom_icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BuildSearchProduct(),
          CustomIconBtnWithCounter(
            onTap: () {
              Get.to(()=>const CartView(),transition: Transition.fade);
            },
            iconPath: "assets/icons/Cart Icon.svg",
            //numOfItems: 3,
          ),
          CustomIconBtnWithCounter(
            onTap: () {},
            iconPath: "assets/icons/Bell.svg",
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}
