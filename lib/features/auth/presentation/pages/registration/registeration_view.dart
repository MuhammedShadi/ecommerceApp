// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/features/auth/presentation/pages/registration/widgets/registration_body_view.dart';
import 'package:flutter/material.dart';
class RegistrationView extends StatelessWidget {
  const RegistrationView({Key? key});
  static const routName="/registration";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title:const Text("Sign Up"),centerTitle: true,),body:const RegistrationViewBody(),);
  }
}
