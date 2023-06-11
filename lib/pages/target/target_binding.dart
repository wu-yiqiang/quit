import 'package:get/get.dart';
import 'package:quit/pages/target/target_controller.dart';

class TargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TargetConstroller());
  }
}
