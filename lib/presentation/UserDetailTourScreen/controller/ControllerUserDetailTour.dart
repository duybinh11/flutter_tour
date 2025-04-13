import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controlleruserdetailtour extends GetxController {
  final selectedDate = Rx<DateTime?>(null);

  final count = 1.obs;
  final totalMoney = 0.obs;
  final price = 80;

  @override
  void onInit() {
    totalMoney.value = count.value * price;
    super.onInit();
  }

  void clickSelectDate(BuildContext context) async {
    selectedDate.value = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
  }

  void clickPlus() {
    count.value++;
    setTotalMoney();
  }

  void minus() {
    if (count > 1) {
      count.value--;
      setTotalMoney();
    }
  }

  void setTotalMoney() {
    totalMoney.value = count.value * price;
  }
}
