import 'package:ecommerce/features/auth/presentation/pages/otp/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_suffix_icon.dart';
import '../../../../../../core/widgets/form_error.dart';


class CompleteRegisterationFormBody extends StatefulWidget {
  const CompleteRegisterationFormBody({Key? key}) : super(key: key);

  @override
  State<CompleteRegisterationFormBody> createState() =>
      _CompleteRegisterationFormBodyState();
}

class _CompleteRegisterationFormBodyState
    extends State<CompleteRegisterationFormBody> {
  final _formKey = GlobalKey<FormState>();
  String? phoneNumber;
  String? firstName;
  String? lastName;
  String? address;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
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
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(56),
            child: CustomGeneralButton(
              textButton: "Continue",
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // if all are valid then go to success screen
                  Get.to(() => const OtpView(),
                      transition: Transition.fade);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 30),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: "First Name",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isEmpty) {
          removeError(error: kNamelNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 30),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: "Last Name",
        hintText: "Re-enter your last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 30),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      // keyboardType: TextInputType.text,
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 30),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            const CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }
}
