import 'package:book_tour/config/routes/appRoutes.dart';
import 'package:book_tour/core/BaseWidget/CacheImgCustom.dart';
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
              child: const BoxTourRecommen()),
        )
      ]),
    );
  }
}

class BoxTourRecommen extends StatelessWidget {
  const BoxTourRecommen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 20),
      width: double.infinity,
      padding: EdgeInsets.all(3.w),
      height: 110.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          border: Border.all(width: 1, color: Colors.grey)),
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            width: 100.h,
            child: CacheImgCustom(
                url:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdZPzvFTPTH-g_IeMTlo16ue1S3OdnmiCX7Q&s"),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kerinci Mountain",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Text(
                      "Hiking",
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icon/icon1.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            const Text("Solok, Jambi")
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4.3")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BoxTourHot extends StatelessWidget {
  const BoxTourHot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      width: 240.w,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
          border: Border.all(color: Colors.grey, width: 1.w)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: double.infinity,
                  child: CacheImgCustom(
                      url:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdZPzvFTPTH-g_IeMTlo16ue1S3OdnmiCX7Q&s"),
                ),
                Positioned(
                  top: 14,
                  left: 14,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: Text(
                      "Travel",
                      style: TextStyle(
                          fontSize: 11.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Semeru Mountain",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/icon/icon1.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Malang, East Java")
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
