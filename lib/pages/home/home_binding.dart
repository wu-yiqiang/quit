import 'package:get/get.dart';
import 'package:quit/pages/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeConstroller());
  }
}
