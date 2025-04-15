import 'package:book_tour/core/BaseWidget/CacheImgCustom.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Admindetailbookedscreen extends StatelessWidget {
  const Admindetailbookedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
                  Positioned(
                    bottom: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.w, horizontal: 20.w),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      margin: EdgeInsets.symmetric(horizontal: 30.w),
                      height: 100,
                      width: Get.width - 60.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Semeru Mountain",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                      "assets/icon/icon1.png",
                                      color: Colors.white,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Malang, East Java",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.w),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Người đặt",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Zxc123",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total Money",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "100k",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Member ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Status ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Accept",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Create At ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "14/04/2025",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15.sp),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        bottomSheet: Container(
            margin: EdgeInsets.all(20.w),
            width: double.infinity,
            height: 60.h,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("COFIRM"))));
  }
}
