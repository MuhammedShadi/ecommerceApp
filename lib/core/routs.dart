import 'package:ecommerce/features/auth/presentation/pages/forgetPassowrd/forget_password_view.dart';
import 'package:ecommerce/features/auth/presentation/pages/login/login_view.dart';
import 'package:ecommerce/features/auth/presentation/pages/otp/otp_view.dart';
import 'package:ecommerce/features/auth/presentation/pages/registration/registeration_view.dart';
import 'package:flutter/widgets.dart';
import '../features/onBoarding/on_boarding_view.dart';
import '../features/splash/splash_view.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (ctx) => const SplashView(),
  OnBoardingView.routName: (ctx) => const OnBoardingView(),
  LoginView.routName: (ctx) => const LoginView(),
  ForgetPasswordView.routName:(ctx)=> const ForgetPasswordView(),
  RegistrationView.routName:(ctx)=>const RegistrationView(),
  OtpView.routName:(ctx)=>const OtpView(),
};
