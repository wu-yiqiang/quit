import 'package:flutter/material.dart';
import 'package:quit/pages/home/home_controller.dart';
import 'package:get/get.dart';
import '../../common/config.dart';
import 'package:quit/common/widgets/home_page_tableview.dart';

import '../../routes/app_routes.dart';

class HomePage extends StatelessWidget {
  final double bottomTabViewHeight = 70.0;
  final HomeConstroller homeConstroller = Get.find<HomeConstroller>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: homeConstroller.pageController,
              children: [
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                  // child: TextButton(
                  //   child: Text("你好呀"),
                  //   onPressed: () {
                  //     Get.toNamed(Routes.TARGET);
                  //   },
                  // ),
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    label: Text(
                      "添加",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.TARGET);
                    },
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                  child: const Text('你好萨达啊'),
                )
              ],
            )),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: bottomTabViewHeight,
                  width: double.infinity,
                  color: Colors.orange,
                  child: HomePageTabView(
                    tabIcons: [
                      "assets/icons/common/4.svg",
                      "assets/icons/common/2.svg"
                    ],
                    selectIndex: 0,
                    activeColor: commonGreenColor,
                    onPress: (index) {
                      homeConstroller.pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease);
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
