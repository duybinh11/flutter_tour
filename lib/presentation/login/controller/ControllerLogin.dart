import 'package:book_tour/config/routes/appRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controllerlogin extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();

  void clickLogin() {
    if (email.text == "admin" && password.text == "admin") {
      Get.toNamed(AppRoutes.adminHome);
    } else {
      Get.toNamed(AppRoutes.userIndex);
    }
  }
}
