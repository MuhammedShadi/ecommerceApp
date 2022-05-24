import 'package:ecommerce/features/auth/presentation/pages/completeProfile/widgets/complete_profile_body.dart';
import 'package:flutter/material.dart';

class CompleteProfileView extends StatelessWidget {
  const CompleteProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title:const Text("Sign Up")),
      body: const CompleteProfileBody(),
    );
  }
}
