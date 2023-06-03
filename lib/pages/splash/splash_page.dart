import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quit/common/config.dart';
import 'package:quit/models/illustration.dart';
import 'package:quit/pages/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _PageViewWidget(),
    );
  }
}

class _PageViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _pageViewWidgetState();
  }
}

class _pageViewWidgetState extends State<_PageViewWidget> {
  @override
  int _currentIndex = 0;
  SplashConstroller splashConstroller = Get.find<SplashConstroller>();

  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      fit: StackFit.expand,
      children: [
        PageView.builder(
            itemCount: 2,
            // pageSnapping: true,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              if (index > splashConstroller.illustrations.length - 1)
                return const SizedBox.shrink();
              Illustration illustration =
                  splashConstroller.illustrations[index];
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: Get.height / 2 - (Get.width - 40) / 2 - 50),
                      child: SvgPicture.asset(illustration.assets!,
                          height: Get.width - 40),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, right: 20),
                      width: double.infinity,
                      child: Text(
                        illustration.copyRight ?? '',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: textGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    index == splashConstroller.illustrations.length - 1
                        ? Container(
                            margin: const EdgeInsets.only(top: 160),
                            width: 240,
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                //
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => commonGreenColor),
                                  textStyle:
                                      MaterialStateProperty.all(TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5,
                                  )),
                                  foregroundColor:
                                      MaterialStateProperty.all(textBlackColor),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.0)))),
                              child: Text('开启一段崭新的寻找之旅',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    height: 1.2,
                                  )),
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.only(top: 100),
                            width: 220,
                            height: 50,
                            alignment: Alignment.center,
                            child: Text('一起探寻萨特的磨坊',
                                style: TextStyle(
                                    color: textGreyColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700)))
                  ]);

              return index == 0
                  ? Container(
                      color: Colors.amber,
                    )
                  : Container(color: Colors.red);
            }),
        Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom + 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == 0
                          ? Colors.grey
                          : Colors.grey.withOpacity(0.5)),
                ),
                Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == 1
                          ? Colors.grey
                          : Colors.grey.withOpacity(0.5)),
                )
              ],
            ))
      ],
    );
  }
}
