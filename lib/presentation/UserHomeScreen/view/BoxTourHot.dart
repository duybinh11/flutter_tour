import 'package:book_tour/core/BaseWidget/CacheImgCustom.dart';
import 'package:book_tour/model/TourModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxTourHot extends StatelessWidget {
  final TourModel tourModel;
  const BoxTourHot({super.key, required this.tourModel});

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
                  width: double.infinity,
                  height: double.infinity,
                  child: CacheImgCustom(url: tourModel.imgs!.first),
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
                      tourModel.type!,
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
                      tourModel.name!,
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
                        Text(tourModel.address!.province!)
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
                      "${tourModel.averageRate}",
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
