import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Controlleradmindetailtour extends GetxController {
  final descriptionController = TextEditingController();

  @override
  void onInit() {
    descriptionController.text =
        "Mount Semeru or Mount Meru is a cone volcano in East Java, Indonesia. Mount Semeru is the highest mountain on the island of Java, with its peak Mahameru, 3,676 meters above sea level.";
    super.onInit();
  }
}
