import 'package:book_tour/core/BaseWidget/CustomDropdown.dart';
import 'package:book_tour/core/util/UtilColors.dart';
import 'package:book_tour/model/ProvinceVn.dart';
import 'package:book_tour/presentation/AdminAddTourScreen/controller/ControllerAdminAddTour.dart';
import 'package:book_tour/presentation/AdminAddTourScreen/view/BoxActivitySchedules.dart';
import 'package:book_tour/presentation/AdminAddTourScreen/view/BoxSelectImgs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Adminaddtourscreen extends GetView<Controlleradminaddtour> {
  const Adminaddtourscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text("Add tour"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Image",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              BoxSelectImgs(controller: controller),
              SizedBox(
                height: 15.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: "Name"),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price per pax",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: "80k/pax"),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "description",
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const TextField(
                    maxLines: 5,
                    decoration: InputDecoration(hintText: "description"),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              DropdownButtonFormField<String>(
                value: "Travel",
                decoration: InputDecoration(
                  labelText: "Choose type",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                items: ["Travel", "Option 2", "Option 3"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                style: const TextStyle(
                  fontSize: 12,
                ),
                onChanged: (value) {
                  // selectedValue = value;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Obx(
                () => CustomDropdown<ProvinceVn>(
                  value: controller.province,
                  items: controller.provinces.value,
                  label: 'Chọn tỉnh thành',
                  itemLabelBuilder: (item) => item.name,
                  onChanged: (newValue) {
                    controller.province = newValue;
                    controller.getDistricts();
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Obx(
                () => CustomDropdown<Districts>(
                  value: controller.district,
                  items: controller.districts.value,
                  label: 'Chọn quận/huyện',
                  itemLabelBuilder: (item) => item.name,
                  onChanged: (newValue) {
                    controller.district = newValue;
                    controller.getTowns();
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Obx(
                () => CustomDropdown<Town>(
                  value: controller.town,
                  items: controller.towns.value,
                  label: 'Chọn xã/phường',
                  itemLabelBuilder: (item) => item.name,
                  onChanged: (newValue) {
                    controller.town = newValue;
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                controller: controller.detailPlace,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.place),
                    label: Text("Địa chỉ chính xác"),
                    hintText: "Nhập địa chỉ chính xác"),
              ),
              SizedBox(
                height: 20.h,
              ),
              const BoxActivitySchedules(),
              SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.clickCreate(),
                      child: const Text("Create Tour"))),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Image.asset(
          "assets/icon/icon3.png",
          color: Colors.white,
        ),
        onPressed: () => controller.addBoxSchedule(),
      ),
    );
  }
}
