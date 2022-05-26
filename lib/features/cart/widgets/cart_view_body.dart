// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/core/utils/size_config.dart';
import 'package:ecommerce/features/auth/presentation/manger/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_item_card_body.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({Key? key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(itemCount: demoCarts.length,itemBuilder: (context,index)=>
          Padding(
            padding:  const EdgeInsets.symmetric(vertical: 8.0),
            child: Dismissible(
              key: Key(demoCarts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color(0xffffe6e6),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg")
                  ],
                ),
              ),
              onDismissed: (direction){
                setState((){
                  demoCarts.removeAt(index);
                });
              },
              child: CartItemCard(cart: demoCarts[index]),
            ),
          ),
      ),
    );
  }
}
