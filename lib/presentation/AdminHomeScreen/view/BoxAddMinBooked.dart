import 'package:book_tour/config/routes/appRoutes.dart';
import 'package:book_tour/core/BaseWidget/CacheImgCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BoxAddMinBooked extends StatelessWidget {
  const BoxAddMinBooked({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(left: 20.w, top: 30.w, right: 20.w),
          padding: EdgeInsets.all(14.w),
          height: 170.h,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(20.r))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icon/icon4.png"),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "20 Oct 2023",
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.r))),
                        padding: EdgeInsets.symmetric(
                            vertical: 6.w, horizontal: 12.w),
                        child: Text("Accept",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300)),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: double.infinity,
                          width: 100.w,
                          child: CacheImgCustom(
                              url:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAzHeZ9YsdC0EKMr_KlJN9Rt9JeuPOb1uU0g&s"),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Prau Mountain",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500)),
                            Text("5pax",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w300)),
                            Text("200k",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500))
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                          height: 30.h,
                          child: ElevatedButton(
                              onPressed: () =>
                                  Get.toNamed(AppRoutes.adminDetailBooked),
                              child: Text(
                                "View",
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w500),
                              ))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
