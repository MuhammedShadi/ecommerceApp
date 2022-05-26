// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce/features/home/widgets/home_body_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key});
  static const routName="/Home";

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body: HomeBodyView());
  }
}
