import 'package:book_tour/config/routes/appRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Userprofilescreen extends StatelessWidget {
  const Userprofilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          SizedBox(
            height: 160.h,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.4),
                      topRight: Radius.circular(50.4))),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.detailProfile),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 20.w),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey,
                                  spreadRadius: 0.5)
                            ]),
                        child: Row(
                          children: [
                            Image.asset("assets/img/avt.png"),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Adams",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp),
                                ),
                                Text("Edit Profile",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10.sp))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
