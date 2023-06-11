import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../common/config.dart';
import '../../models/target.dart';

class TargetConstroller extends GetxController {
  var pageController = PageController(initialPage: 0);

  List<Target> targets = List.from(defaultTargets);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }
}
