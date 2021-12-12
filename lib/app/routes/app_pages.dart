// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:test_mobile_creonit/modules/home/home_binding.dart';
import 'package:test_mobile_creonit/modules/home/home_page.dart';
import 'package:test_mobile_creonit/modules/splash/splash_screen.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
    //   bindings: [
    //     HomeBinding(),
    //   ],
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      bindings: [
        HomeBinding(),
      ],
    
    
    ),
  ];
}
