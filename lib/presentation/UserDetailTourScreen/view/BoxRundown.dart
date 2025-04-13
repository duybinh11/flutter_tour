import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxRundown extends StatelessWidget {
  const BoxRundown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rundown",
          style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. ",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Departure date must confirm the relevant",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Text(
                      "Located at an altitude of 2,100 meters above sea level, Ranu Pani is the licensing and checking post for all visitors. Group hikers are simply represented by a team or group leader by submitting a photocopy of their identity card, a list of hikers' names, a health certificate, and a list of luggage.")
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "2. ",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pos 1 (Landengan Dowo) - Pos 2 (Watu Rejeng)",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Text(
                      "The distance between post 1 and post 2 is the closest, with a fairly gentle route. At the beginning, the path is slightly uphill with dirt path conditions. However, the road conditions are still sloping. Right and left are bushes and trees. Then climbers will arrive at post 2.")
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "3. ",
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pos 1 (Landengan Dowo) - Pos 2 (Watu Rejeng)",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Text(
                      "The distance between post 1 and post 2 is the closest, with a fairly gentle route. At the beginning, the path is slightly uphill with dirt path conditions. However, the road conditions are still sloping. Right and left are bushes and trees. Then climbers will arrive at post 2.")
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
