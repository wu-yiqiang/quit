import 'package:flutter/material.dart';
import 'package:quit/pages/audio/audio_page.dart';
import 'package:quit/pages/home/home_controller.dart';
import 'package:get/get.dart';
import '../../common/config.dart';
import 'package:quit/common/widgets/home_page_tableview.dart';

import '../../routes/app_routes.dart';
import './home_list.dart';
import './home_swipper.dart';
import '../video/video_page.dart';
import '../audio/audio_page.dart';

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
                  // color: Colors.blue,
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                  alignment: Alignment.center,
                  // child: TextButton(
                  //   child: Text("你好呀"),
                  //   onPressed: () {
                  //     Get.toNamed(Routes.TARGET);
                  //   },
                  // ),
                  child: Column(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            // width: double.infinity,
                            margin: EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            child: HomeSwipper(),
                          )
                        ],
                      ),
                      Container(
                        height: 400,
                        child: HomeList(),
                      )
                    ],
                  ),
                  // child: ElevatedButton.icon(
                  //   icon: Icon(Icons.add),
                  //   label: Text(
                  //     "添加",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  //   onPressed: () {
                  //     Get.toNamed(Routes.TARGET);
                  //   },
                  // ),
                ),
                Container(
                  // color: Colors.red,
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                  child: VideoPage(),
                ),
                Container(
                  color: Colors.orange,
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                  child: AudioPage(),
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
                  // color: Colors.orange,
                  child: HomePageTabView(
                    tabIcons: [
                      "assets/icons/common/home.svg",
                      "assets/icons/common/video.svg",
                      "assets/icons/common/audio.svg",
                      "assets/icons/common/voice.svg"
                    ],
                    selectIndex: 0,
                    activeColor: Colors.orange,
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
