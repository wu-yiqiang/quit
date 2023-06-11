import 'package:get/get.dart';
import 'package:quit/common/config.dart';
import 'package:quit/models/illustration.dart';
import 'package:sqflite/sqflite.dart';

class SplashConstroller extends GetxController {
  List<Illustration> illustrations = List.from(splashIllustrations);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    print("存储路径" + await getDatabasesPath());
  }
}
