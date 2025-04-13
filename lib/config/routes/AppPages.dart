import 'package:book_tour/config/routes/appRoutes.dart';
import 'package:book_tour/presentation/AdminAddTourScreen/binding/BindingAdminAddTour.dart';
import 'package:book_tour/presentation/AdminAddTourScreen/view/AdminAddTourScreen.dart';
import 'package:book_tour/presentation/AdminHomeScreen/binding/BindingAdminHome.dart';
import 'package:book_tour/presentation/AdminHomeScreen/view/AdminHomeScreen.dart';
import 'package:book_tour/presentation/DetailProfileScreen/binding/BindingDetailProfile.dart';
import 'package:book_tour/presentation/DetailProfileScreen/view/DetailProfileScreen.dart';
import 'package:book_tour/presentation/IntroduceScreen/view/IntroduceScreen.dart';
import 'package:book_tour/presentation/SignUpScreen/binding/BindingSignUp.dart';
import 'package:book_tour/presentation/SignUpScreen/view/SignUpScreen.dart';
import 'package:book_tour/presentation/UserDetailTourScreen/binding/BindingUserDetailTour.dart';
import 'package:book_tour/presentation/UserDetailTourScreen/view/UserDetailTour.dart';
import 'package:book_tour/presentation/UserIndexScreen/binding/BindingUserIndex.dart';
import 'package:book_tour/presentation/UserIndexScreen/view/UserIndexScreen.dart';
import 'package:book_tour/presentation/login/binding/BindingController.dart';
import 'package:book_tour/presentation/login/view/LoginScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.introduce,
      page: () => const Introducescreen(),
    ),
    GetPage(
        name: AppRoutes.login,
        page: () => const Loginscreen(),
        binding: Loginbinding()),
    GetPage(
        name: AppRoutes.signUp,
        page: () => const Signupscreen(),
        binding: Bindingsignup()),
    GetPage(
        name: AppRoutes.userIndex,
        page: () => const Userindexscreen(),
        binding: Bindinguserindex()),
    GetPage(
        name: AppRoutes.userDetaiTour,
        page: () => const UserDetailTourScreen(),
        binding: Bindinguserdetailtour()),
    GetPage(
        name: AppRoutes.detailProfile,
        page: () => const Detailprofilescreen(),
        binding: Bindingdetailprofile()),
    GetPage(
        name: AppRoutes.adminHome,
        page: () => const AdminHomeScreen(),
        binding: Bindingadminhome()),
    GetPage(
        name: AppRoutes.adminAddTour,
        page: () => const Adminaddtourscreen(),
        binding: Bindingadminaddtour()),
    // GetPage(
    //     name: AppRoutes.hotelIndex,
    //     page: () => const Hotelindexscreen(),
    //     binding: Hotelindexbinding()),
    // GetPage(
    //   name: AppRoutes.hotelDetailBooked,
    //   page: () => const HotelDetailBooked(),
    //   // binding: Detailbookedbinding()
    // ),
  ];
}
