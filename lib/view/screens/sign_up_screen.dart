import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controllers/auth_controller.dart';
import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/icons_manager.dart';
import '../../resources/strings_manager.dart';
import '../../resources/text_form_field.dart';
import '../../routes/routes.dart';

class SignUpScreen extends StatelessWidget {
  final fromKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
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
                  const Image(
                    image: AssetImage(AssetsManager.loadingPhoto),
                  ),
                  const Text(AppStrings.signUp),
                  AuthTextFormField(
                    IconsManager.nameIcon,
                    AppStrings.name,
                    false,
                    const Text(''),
                    nameController,
                    () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthTextFormField(
                    IconsManager.emailIcon,
                    AppStrings.emailId,
                    false,
                    const Text(''),
                    emailController,
                    () {},
                  ),
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
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    String name = nameController.text.trim();
                    String email = emailController.text.trim();
                    String password = passwordController.text;
                    String number = phoneController.text;
                    controller.signUpUsingFirebase(
                        name: name, email: email, password: password);
                  },
                  child: const Text(AppStrings.continueTo),
                  style: ElevatedButton.styleFrom(),
                ),
              ),
            ),
            const SizedBox(
              height: 52,
            ),
            const Text("OR"),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 150),
              child: Row(
                children: [
                  const Text(
                    AppStrings.joinedBefore,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.loginScreen);
                    },
                    child: const Text(
                      AppStrings.logIN,
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
