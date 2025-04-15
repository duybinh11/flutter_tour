import 'dart:convert';
import 'dart:io';

import 'package:book_tour/model/ProvinceVn.dart';
import 'package:book_tour/presentation/AdminAddTourScreen/view/AdminAddTourScreen.dart';
import 'package:book_tour/presentation/AdminAddTourScreen/view/BoxActivitySchedules.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Controlleradminaddtour extends GetxController {
  final Rx<File?> selectedImage1 = Rx<File?>(null);
  final Rx<File?> selectedImage2 = Rx<File?>(null);
  final Rx<File?> selectedImage3 = Rx<File?>(null);
  final activityTitleControllers = <TextEditingController>[].obs;
  final activityContentControllers = <TextEditingController>[].obs;

  final boxSchedules = <BoxActivitySchedule>[].obs;

  final detailPlace = TextEditingController();
  final provinces = <ProvinceVn>[].obs;
  final districts = <Districts>[].obs;
  final towns = <Town>[].obs;
  final pathData = 'assets/data/ProvinceData.json';

  @override
  void onInit() {
    super.onInit();
    addBoxSchedule();
    getProvinces();
  }

  void clickCreate() {
    print("sd");
    activityTitleControllers.value.forEach((element) => print(element.text));
    activityContentControllers.value.forEach((element) => print(element.text));
  }

  void addBoxSchedule() {
    final titleController = TextEditingController();
    final contentController = TextEditingController();
    activityContentControllers.add(titleController);
    activityContentControllers.add(contentController);
    boxSchedules.add(BoxActivitySchedule(
      titleController: titleController,
      contentController: contentController,
    ));
  }

  void getProvinces() async {
    String jsonString = await rootBundle.loadString(pathData);
    Map<String, dynamic> mapData = jsonDecode(jsonString);
    List<dynamic> listData = mapData['province'];
    provinces.clear();
    provinces.value = listData.map((e) => ProvinceVn.fromMap(e)).toList();
  }

  void getDistricts() async {
    if (province != null) {
      String jsonString = await rootBundle.loadString(pathData);
      Map<String, dynamic> mapData = jsonDecode(jsonString);
      List<dynamic> listData = mapData['district'];
      districts.clear();
      districts.value = listData
          .where((element) => element['idProvince'] == province!.id)
          .map((e) => Districts.fromMap(e))
          .toList();
      district = districts.first;
      getTowns();
    }
  }

  void getTowns() async {
    if (district != null) {
      String jsonString = await rootBundle.loadString(pathData);
      Map<String, dynamic> mapData = jsonDecode(jsonString);
      List<dynamic> listData = mapData['commune'];
      towns.clear();
      towns.value = listData
          .where((element) => element['idDistrict'] == district!.idDistrict)
          .map((e) => Town.fromMap(e))
          .toList();
      town = towns.first;
    }
  }

  Future<void> pickImage(Rx<File?> file) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      file.value = File(pickedFile.path);
    }
  }

  ProvinceVn? province;
  Districts? district;
  Town? town;
}
