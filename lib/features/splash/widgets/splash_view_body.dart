import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../onBoarding/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  Animation<double>? fadInAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    fadInAnimation =
        Tween<double>(begin: 0.0, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadInAnimation!,
          child: const Text(
            "TOOT",
            style: TextStyle(
              fontSize: 51,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        SizedBox(
            width: MediaQuery.of(context).size.width * 100,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset("assets/images/splash_1.png")),
        const Spacer(),
      ],
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    });
  }
}
