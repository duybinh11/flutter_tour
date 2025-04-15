import 'package:book_tour/config/routes/appRoutes.dart';
import 'package:book_tour/core/BaseWidget/CacheImgCustom.dart';
import 'package:book_tour/presentation/UserHomeScreen/view/BoxTourHot.dart';
import 'package:book_tour/presentation/UserHomeScreen/view/BoxTourRecommen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Userhomescreen extends StatelessWidget {
  const Userhomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: "Search"),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tour Hot",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: SizedBox(
                  height: 279.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.userDetaiTour),
                          child: const BoxTourHot()),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) => GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.userDetaiTour),
              child: Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 20),
                child: const BoxTourRecommen(),
              )),
        )
      ]),
    );
  }
}
