import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:quit/routes/app_routes.dart';

Widget createApp() {
  return GetMaterialApp(
    initialRoute: Routes.SPLASH,
    getPages: AppPages.pages,
  );
}
