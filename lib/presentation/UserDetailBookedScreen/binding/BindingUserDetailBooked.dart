import 'package:book_tour/presentation/UserDetailBookedScreen/controller/ControllerUserDetailBooked.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class Bindinguserdetailbooked extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controlleruserdetailbooked>(() => Controlleruserdetailbooked());
  }
}
