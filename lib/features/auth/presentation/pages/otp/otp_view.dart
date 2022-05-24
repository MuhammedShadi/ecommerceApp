import 'package:ecommerce/features/auth/presentation/pages/otp/widgets/otp_body_view.dart';
import 'package:flutter/material.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) ;
  static const routName="/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
        centerTitle: true,
      ),
      body: const OtpBodyView(),
    );
  }
}
