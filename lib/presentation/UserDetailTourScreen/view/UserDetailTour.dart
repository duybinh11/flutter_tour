import 'package:book_tour/core/BaseWidget/CacheImgCustom.dart';
import 'package:book_tour/presentation/UserDetailTourScreen/controller/ControllerUserDetailTour.dart';
import 'package:book_tour/presentation/UserDetailTourScreen/view/BoxNumPax.dart';
import 'package:book_tour/presentation/UserDetailTourScreen/view/BoxRundown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class UserDetailTourScreen extends GetView<Controlleruserdetailtour> {
  const UserDetailTourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Desciption",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20.sp),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              builder: (context) => SizedBox(
                                height: Get.height * .6,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.w),
                                        child: Text(
                                          'Post Review',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: 10,
                                          itemBuilder: (context, index) =>
                                              ListTile(
                                            leading: ClipOval(
                                              child: CircleAvatar(
                                                child:
                                                    // null != null
                                                    //     ? Image.network(
                                                    //         listRate[index]
                                                    //             .userModel
                                                    //             .img!)
                                                    //     :
                                                    Image.asset(
                                                        'assets/img/avt.png'),
                                              ),
                                            ),
                                            title: Text(
                                              "Username",
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            subtitle: Text(
                                              "Comment",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            // trailing: SizedBox(
                                            //   height: double.infinity,
                                            //   width: 100,
                                            //   child: Column(
                                            //     children: [
                                            //       RateStar(
                                            //           rateAvg:
                                            //               listRate[index]
                                            //                   .rateStar,
                                            //           fixSize: 15),
                                            //       Text(
                                            //         '${listRate[index].createdAt.day}/${listRate[index].createdAt.month}/${listRate[index].createdAt.year}',
                                            //         style: const TextStyle(
                                            //             color: Colors.amber,
                                            //             fontWeight:
                                            //                 FontWeight.w700,
                                            //             fontSize: 12),
                                            //       )
                                            //     ],
                                            //   ),
                                            // )
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "Reviews",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: Colors.yellow,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 13.sp),
                        "Mount Semeru or Mount Meru is a cone volcano in East Java, Indonesia. Mount Semeru is the highest mountain on the island of Java, with its peak Mahameru, 3,676 meters above sea level."),
                    SizedBox(
                      height: 30.h,
                    ),
                    const BoxNumPax(),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text("Select travel date",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15.sp)),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () => controller.clickSelectDate(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Text(
                                controller.selectedDate.value != null
                                    ? DateFormat('dd/MM/yyyy')
                                        .format(controller.selectedDate.value!)
                                    : 'Select travel date',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Icon(Icons.calendar_today,
                                size: 20, color: Colors.grey),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const BoxRundown(),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 50.h,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100.h,
        decoration: const BoxDecoration(
            color: Colors.black,
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () => Text(
                "Total money : ${controller.totalMoney.value}k",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 22.sp),
              ),
            ),
            SizedBox(
              height: 56.h,
              width: 100.w,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Book")),
            )
          ],
        ),
      ),
    );
  }
}
