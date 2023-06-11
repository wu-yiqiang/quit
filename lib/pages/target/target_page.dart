import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quit/common/config.dart';
import 'package:quit/pages/target/target_controller.dart';
import '../../common/widgets/navigator_bar.dart';
import 'package:auto_animated/auto_animated.dart';
import "package:quit/models/target.dart";

class TargetPage extends StatelessWidget {
  final TargetConstroller targetConstroller = Get.find<TargetConstroller>();

  Widget _renderTargetItem(Target? target, int index, BuildContext context) {
    if (target == null) {
      return const SizedBox.shrink();
    }
    return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(
              top: index == 0 ? 15 : 10,
              left: 15,
              right: 15,
              bottom: index == targetConstroller.targets.length - 1 ? 15 : 10),
          height: 80,
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
              color: target.targetColors,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(target.name ?? '',
                          style: TextStyle(
                            color: textBlackColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      child: Text(target.descript ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          )),
                    )
                  ],
                ),
              ))
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: NavigatorBar(
        title: '挑战目标',
        closeCallback: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: LiveList(
            showItemInterval: const Duration(milliseconds: 200),
            showItemDuration: const Duration(milliseconds: 200),
            visibleFraction: 0.05,
            reAnimateOnVisibility: false,
            itemBuilder: ((context, index, animation) {
              return FadeTransition(
                  opacity: Tween<double>(begin: 0, end: 1).animate(animation),
                  child: _renderTargetItem(
                      targetConstroller.targets[index], index, context));
            }),
            itemCount: targetConstroller.targets.length),
      ),
    );
  }
}
