import 'package:flutter/material.dart';
import 'package:flutter_task/resources/assets_manager.dart';
import 'package:flutter_task/resources/colors_manager.dart';
import 'package:flutter_task/resources/text_form_field.dart';
import 'package:get/get.dart';

import '../../logic/controllers/auth_controller.dart';
import '../../resources/strings_manager.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController passwordController = TextEditingController();
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image(
                  image: AssetImage(AssetsManager.forgetPasswordPhoto),
                ),
                Text('Forgot Password'),
                SizedBox(
                  height: 50,
                ),
                AuthTextFormField(
                  Icon(Icons.email),
                  'Please enter your email',
                  false,
                  Text(''),
                  passwordController,
                  (_) {},
                ),
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        String email = passwordController.text;
                        controller.resetPassword(email);
                      },
                      child: const Text(AppStrings.continueTo),
                      style: ElevatedButton.styleFrom(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
