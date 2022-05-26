// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/widgets/custom_suffix_icon.dart';
import '../../../../../../core/widgets/form_error.dart';

class ForgotPasswordFormBody extends StatefulWidget {
  @override
  _ForgotPasswordFormBodyState createState() => _ForgotPasswordFormBodyState();
}

class _ForgotPasswordFormBodyState extends State<ForgotPasswordFormBody> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(56),
            child: CustomGeneralButton(
              textButton: "Continue",
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  // Do what you want to do
                  // Get.to(() => const SuccessLoginView(), transition: Transition.fade);
                }
              },
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          //NoAccountText(),
        ],
      ),
    );
  }
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration:  InputDecoration(
        contentPadding: const EdgeInsets.only(left: 30),
        focusedBorder: OutlineInputBorder(
          borderSide:
          const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }
}