import 'package:get/route_manager.dart';

// SPLASH
import 'package:quit/pages/splash/splash_binding.dart';
import 'package:quit/pages/splash/splash_page.dart';

// HOME
import '../pages/home/home_binding.dart';
import '../pages/home/home_page.dart';

// TARGET
import '../pages/target/target_binding.dart';
import '../pages/target/target_page.dart';

// VIDEO
import '../pages/video/video_page.dart';

// AUDIO
import '../pages/audio/audio_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashPage(),
        binding: SplashBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
      name: Routes.VIDEO,
      page: () => VideoPage(),
    ),
    GetPage(
      name: Routes.AUDIO,
      page: () => AudioPage(),
    ),
  ];
}

// 命名路由名称
abstract class Routes {
  static const INITIAL = "/";

  // 闪屏页
  static const SPLASH = "/splash";

  // home页
  static const HOME = "/home";

  // video
  static const VIDEO = "/video";

  // audio
  static const AUDIO = "/audio";
}
