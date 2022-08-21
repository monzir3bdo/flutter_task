import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task/resources/colors_manager.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../../logic/controllers/auth_controller.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = Get.find<AuthController>();
  var user_data = Get.arguments;
  String getUser() {
    String user = user_data.toString().replaceAll("[", '');
    user = user.replaceAll(']', '');
    return user;
  }

  DateTime now = DateTime.now();
  getCurrentTime() {
    DateTime now = DateTime.now();
    return now.hour.toString() + ":" + now.minute.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Card(
              color: Colors.grey,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('Hello ${getUser()} The time now '),
                    Text('${getCurrentTime()}'),
                    SizedBox(
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
