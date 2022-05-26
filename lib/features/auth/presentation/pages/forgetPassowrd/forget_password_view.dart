// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/features/auth/presentation/pages/forgetPassowrd/widgets/forget_password_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key});

  static const routName = "/forgetPassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Forget Password"),
      ),
      body: const ForgetPasswordBody(),
    );
  }
}
