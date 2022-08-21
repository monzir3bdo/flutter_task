// ignore_for_file: prefer_const_constructors

import 'package:flutter_task/logic/binding/auth_binding.dart';
import 'package:flutter_task/view/screens/forget_password_screen.dart';
import 'package:flutter_task/view/screens/login_screen.dart';
import 'package:flutter_task/view/screens/main_screen.dart';
import 'package:flutter_task/view/screens/otp_screen.dart';
import 'package:flutter_task/view/screens/sign_up_screen.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  //initial Route
  static const login = Routes.loginScreen;
  static const main = Routes.mainScreen;
  static const sign = Routes.signUpScreen;
  static final routes = [
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.otpScreen,
      page: () => OtpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgetScreen,
      page: () => ForgetPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      binding: AuthBinding(),
    ),
  ];
}

class Routes {
  static const loginScreen = '/login';
  static const signUpScreen = '/sign';
  static const otpScreen = '/otp';
  static const forgetScreen = '/forget';
  static const mainScreen = '/main';
}
