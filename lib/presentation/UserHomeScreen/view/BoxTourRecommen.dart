import 'package:book_tour/core/BaseWidget/CacheImgCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxTourRecommen extends StatelessWidget {
  const BoxTourRecommen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
