import 'package:get/get.dart';
import 'package:quit/pages/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashConstroller>(SplashConstroller());
  }
}
