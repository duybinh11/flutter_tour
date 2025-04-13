import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailprofilescreen extends StatelessWidget {
  const Detailprofilescreen({super.key});

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
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.4),
                      topRight: Radius.circular(50.4))),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Info",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        border: Border.all(width: 1, color: Colors.grey)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 23.w, vertical: 15.w),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Image.asset("assets/img/avt.png"),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Your Photo",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w300),
                                  "Adding a profile picture makes your profile more personalized.")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const TextField(
                        decoration: InputDecoration(hintText: "Your name"),
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
                        "Email",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const TextField(
                        decoration:
                            InputDecoration(hintText: "youremails@yahoo.com"),
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
                        "Phone",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const TextField(
                        decoration: InputDecoration(hintText: "Phone"),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                      width: double.infinity,
                      height: 60.h,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Save")))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
