import 'package:get/route_manager.dart';
import 'package:quit/pages/splash/splash_binding.dart';
import 'package:quit/pages/splash/splash_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.SPLASH, page: () => SplashPage(), binding: SplashBinding())
  ];
}

// 命名路由名称
abstract class Routes {
  static const INITIAL = "/";
  // 闪屏页
  static const SPLASH = "/splash";
}
