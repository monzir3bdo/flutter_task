import 'package:flutter/material.dart';
import 'package:flutter_task/resources/assets_manager.dart';
import 'package:flutter_task/resources/colors_manager.dart';
import 'package:flutter_task/resources/icons_manager.dart';
import 'package:flutter_task/resources/text_form_field.dart';

class OtpScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();
  OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      backgroundColor: ColorManager.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Image(
                  image: AssetImage(AssetsManager.otpPhoto),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text("OTP"),
                const SizedBox(
                  height: 50,
                ),
                AuthTextFormField(
                  IconsManager.number,
                  ' Please Enter the otp',
                  false,
                  const Text(''),
                  otpController,
                  () {},
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Submit"),
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
