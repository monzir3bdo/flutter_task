import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../routes/routes.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();
  static final MyApp instance = MyApp._internal(); // single-ton
  factory MyApp() => instance; //factory for the constructor

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.loginScreen,
      getPages: AppRoutes.routes,
    );
  }
}
