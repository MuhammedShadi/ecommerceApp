import 'package:ecommerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

class TextFormFieldContent extends StatefulWidget {
  const TextFormFieldContent(
      {Key? key,
      required this.labelTxt,
      required this.hintTxt,
      required this.suffixIconPath,
      required this.textInputType,
      required this.obscureValue, required this.errors});

  final String? labelTxt;
  final String? hintTxt;
  final String? suffixIconPath;
  final TextInputType? textInputType;
  final bool? obscureValue;
  final List<String>? errors;

  @override
  State<TextFormFieldContent> createState() => _TextFormFieldContentState();
}

class _TextFormFieldContentState extends State<TextFormFieldContent> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureValue!,
      keyboardType: widget.textInputType!,
      validator: (value) {
        if (value!.isEmpty) {
         setState((){
           widget.errors!.add("Please entre your email ");
         });
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: widget.labelTxt,
        hintText: widget.hintTxt!,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
              getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
          child: SvgPicture.asset(widget.suffixIconPath!, height: 18),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }
}
