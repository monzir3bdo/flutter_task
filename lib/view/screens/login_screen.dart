// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controllers/auth_controller.dart';
import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/icons_manager.dart';
import '../../resources/strings_manager.dart';
import '../../resources/text_form_field.dart';
import '../../routes/routes.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: 0,
        ),
        backgroundColor: ColorManager.white,
        body: ListView(children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(AssetsManager.loadingPhoto),
                  ),
                  const Text(AppStrings.logIN),
                  AuthTextFormField(IconsManager.emailIcon, AppStrings.emailId,
                      false, Text(''), emailController, () {}),
                  const SizedBox(
                    height: 10,
                  ),
                  AuthTextFormField(
                      IconsManager.passwordIcon,
                      AppStrings.password,
                      true,
                      IconsManager.passwordSuffixIcon,
                      passwordController,
                      () {}),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 250),
              child: TextButton(
                onPressed: () {
                  Get.toNamed(Routes.forgetScreen);
                },
                child: Text(
                  AppStrings.forgotPassword,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    String email = emailController.text.trim();
                    String password = passwordController.text;
                    controller.logInUsingFirebase(
                        email: email, password: password);
                  },
                  child: Text('Log In'),
                  style: ElevatedButton.styleFrom(),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("OR"),
            SizedBox(
              height: 30,
            ),
            GetBuilder<AuthController>(builder: (_) {
              return Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.googleSignUpApp();
                    },
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Image(
                          image: AssetImage(AssetsManager.googleLogo),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          AppStrings.googleLogIn,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(),
                  ),
                ),
              );
            }),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 150),
              child: Row(
                children: [
                  Text(
                    AppStrings.newTo,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.signUpScreen,
                          arguments: [emailController]);
                    },
                    child: Text(
                      AppStrings.register,
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
