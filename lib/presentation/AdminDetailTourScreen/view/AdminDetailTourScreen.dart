import 'package:book_tour/core/BaseWidget/CacheImgCustom.dart';
import 'package:book_tour/presentation/AdminDetailTourScreen/controller/ControllerAdminDetailTour.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Admindetailtourscreen extends GetView<Controlleradmindetailtour> {
  const Admindetailtourscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 450.h,
              width: Get.width,
              child: Stack(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: PageView(
                      children: [
                        CacheImgCustom(
                            url:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAzHeZ9YsdC0EKMr_KlJN9Rt9JeuPOb1uU0g&s"),
                        CacheImgCustom(
                            url:
                                "https://res.cloudinary.com/gwatco/image/upload/dpr_auto/t_image-card/f_auto/v1743465600/new-website/static/homepage/global-travel-cover/banner.webp"),
                        CacheImgCustom(
                            url:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9OJg3qYPiieh09pGynQg9MowBV9dVUGi_SA&s"),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    left: 21.w,
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.w,
                  ),
                  Text(
                    "Title",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  TextField(
                    controller: controller.descriptionController,
                    decoration: const InputDecoration(hintText: "Title"),
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  Text(
                    "Desciption",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  TextField(
                    controller: controller.descriptionController,
                    maxLines: 3,
                    decoration: const InputDecoration(hintText: "Desciption"),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price per pax",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w500),
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
                    height: 20.h,
                  ),
                  DropdownButtonFormField<String>(
                    value: "Travel",
                    decoration: InputDecoration(
                      labelText: "Choose type",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                    ),
                    items:
                        ["Travel", "Option 2", "Option 3"].map((String value) {
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
                    height: 15.w,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                            height: 60.h,
                            child: ElevatedButton(
                                onPressed: () {}, child: const Text("Save"))),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: SizedBox(
                            height: 60.h,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red),
                                onPressed: () {},
                                child: const Text("Delete"))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
