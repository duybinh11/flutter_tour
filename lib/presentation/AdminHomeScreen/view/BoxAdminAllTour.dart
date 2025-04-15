import 'package:book_tour/config/routes/appRoutes.dart';
import 'package:book_tour/presentation/UserHomeScreen/view/BoxTourRecommen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BoxAdminAllTour extends StatelessWidget {
  const BoxAdminAllTour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.w),
          child: GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.adminDetailTour),
              child: const BoxTourRecommen()),
        ),
      ),
    );
  }
}
