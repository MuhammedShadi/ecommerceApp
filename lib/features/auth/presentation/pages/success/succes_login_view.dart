import 'package:ecommerce/features/auth/presentation/pages/success/widgets/success_login_body.dart';
import 'package:flutter/material.dart';

class SuccessLoginView extends StatelessWidget {
  const SuccessLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: const Text("Login Success"),
      ),
      body: const SuccessLoginBody(),
    );
  }
}
