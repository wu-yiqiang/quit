import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quit/models/illustration.dart';
import 'package:quit/models/target.dart';

final Color textBlackColor = Color.fromRGBO(69, 80, 97, 1);
final Color textGreyColor = Color.fromRGBO(151, 158, 168, 1);
final Color commonGreenColor = Color.fromRGBO(195, 221, 83, 1);
final List splashIllustrations = [
  Illustration(assets: 'assets/illustration/1.svg', copyRight: ''),
  Illustration(assets: 'assets/illustration/2.svg', copyRight: ''),
  Illustration(assets: 'assets/illustration/3.svg', copyRight: ''),
];

final List Banners = [
  Illustration(assets: 'assets/icons/banner1.jpeg', copyRight: ''),
  Illustration(assets: 'assets/icons/banner1.jpeg', copyRight: ''),
  Illustration(assets: 'assets/icons/banner1.jpeg', copyRight: ''),
];

GlobalKey<NavigatorState> navigatorKey = GlobalKey();
final List<Target> defaultTargets = [
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(87, 49, 225, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(155, 215, 54, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(232, 51, 133, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(65, 48, 213, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(222, 50, 182, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(241, 114, 69, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(145, 76, 218, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(240, 199, 73, 1)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(72, 110, 236, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(72, 206, 56, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ],
  Target()
    ..name = '戒奶茶'
    ..descript = '开启健康的生活方式'
    ..targetDays = 7
    ..targetColors = const Color.fromRGBO(63, 194, 189, 1.0)
    ..notificationTimes = [
      const TimeOfDay(hour: 10, minute: 00),
      const TimeOfDay(hour: 15, minute: 00),
      const TimeOfDay(hour: 20, minute: 00)
    ]
];
