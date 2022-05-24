import 'package:ecommerce/features/auth/presentation/pages/completeProfile/complete_profile_view.dart';
import 'package:ecommerce/features/auth/presentation/pages/otp/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/constants.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_suffix_icon.dart';
import '../../../../../../core/widgets/form_error.dart';
import '../../success/succes_login_view.dart';
class RegistrationFormBody extends StatefulWidget {
  const RegistrationFormBody({Key? key});

  @override
  State<RegistrationFormBody> createState() => _RegistrationFormBodyState();
}

class _RegistrationFormBodyState extends State<RegistrationFormBody> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirmPassword;
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
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildConfirmPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(56),
            child: CustomGeneralButton(
              textButton: "Continue",
              onTap: () {
                Get.to(() => const OtpView(), transition: Transition.fade);
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // if all are valid then go to success screen
                  Get.to(() => const OtpView(), transition: Transition.fade);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
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
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }
  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (password != confirmPassword) {
          removeError(error: kMatchPassError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
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
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
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
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
