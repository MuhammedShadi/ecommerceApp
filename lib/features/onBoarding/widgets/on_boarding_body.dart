import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/utils/size_config.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/features/auth/presentation/pages/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'on_boarding_content_body.dart';



class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  int currentPage = 0;
  PageController? pageController;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to TOOT, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people connect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => OnBoardingContentBody(
                  imagePath: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => dotsBody(
                          index: index,
                        ),
                      ),
                    ),
                    const Spacer(flex: 3),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56),
                      child: CustomGeneralButton(
                        textButton: pageController!.hasClients ?  pageController!.page == 2 ? "Get Started":"Next" : "Next", onTap: () {
                        if(pageController!.page! < 2 ){
                          pageController!.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                        }else{
                          Get.to(()=> const LoginView(),transition: Transition.rightToLeft,duration: const Duration(milliseconds: 300));
                        }
                      },
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer dotsBody({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(8),
      ),
      duration: kAnimationDuration,
    );
  }
}
