// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/features/auth/presentation/pages/login/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key});
  static const routName ="/Login";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign in",
        ),
      ),
      body: const LoginViewBody(),
    );
  }
}
