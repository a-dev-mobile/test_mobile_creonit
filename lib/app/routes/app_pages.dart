// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:test_mobile_creonit/modules/cart/cart_view.dart';
import 'package:test_mobile_creonit/modules/catalog/catalog_binding.dart';
import 'package:test_mobile_creonit/modules/catalog/catalog_view.dart';
import 'package:test_mobile_creonit/modules/dashboard/dashboard_view.dart';
import 'package:test_mobile_creonit/modules/favorit/favorit_view.dart';
import 'package:test_mobile_creonit/modules/home/home_binding.dart';
import 'package:test_mobile_creonit/modules/home/home_view.dart';
import 'package:test_mobile_creonit/modules/product/product_binding.dart';
import 'package:test_mobile_creonit/modules/product/product_view.dart';

import 'package:test_mobile_creonit/modules/profile/profile_view.dart';
import 'package:test_mobile_creonit/modules/root/root_binding.dart';
import 'package:test_mobile_creonit/modules/root/root_view.dart';
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
        name: '/',
        page: () => const RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              name: _Paths.HOME,
   
              page: () => const HomePage(),
          preventDuplicates: true,
              bindings: [
                HomeBinding(),
              ],
              children: [
                GetPage(
                  name: _Paths.DASHBOARD,
                  page: () => const DashboardView(),
        
                ),
                GetPage(
                  name: _Paths.CATALOG,
         
                  page: () => const CatalogView(),
                  binding: CatalogBinding(),
              
                  children: [
                    GetPage(
                      name: _Paths.PRODUCT,
                      page: () => const ProductView(),
                      transition: Transition.rightToLeft,
                      binding: ProductBinding(),
                    )
                  ],
                ),
                GetPage(
                  name: _Paths.FAVORIT,
                  page: () => const FavoritView(),
         
                ),
                GetPage(
                  name: _Paths.CART,
                  page: () => const CartView(),
              
                ),
                GetPage(
                  name: _Paths.PROFILE,
                  page: () => const ProfileView(),
            
                ),
              ]),
        ]),
  ];
}
