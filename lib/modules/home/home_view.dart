import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_mobile_creonit/app/routes/app_pages.dart';
import 'package:test_mobile_creonit/core/constants/colors.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        final currentLocation = currentRoute?.location;
        var currentIndex = 0;

        if (currentLocation?.startsWith(Routes.DASHBOARD) == true) {
          currentIndex = 0;
        }
        if (currentLocation?.startsWith(Routes.CATALOG) == true) {
          currentIndex = 1;
        }
        if (currentLocation?.startsWith(Routes.FAVORIT) == true) {
          currentIndex = 2;
        }
        if (currentLocation?.startsWith(Routes.CART) == true) {
          currentIndex = 3;
        }
        if (currentLocation?.startsWith(Routes.PROFILE) == true) {
          currentIndex = 4;
        }
        return Scaffold(
          //  appBar: AppBar(title: const Text('Главная'), ),
          body: GetRouterOutlet(
            initialRoute: Routes.DASHBOARD,
            anchorRoute: Routes.HOME,
            key: Get.nestedKey(Routes.HOME),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              switch (value) {
                case 0:
                  delegate.toNamed(Routes.HOME);
                  break;
                case 1:
                  delegate.toNamed(Routes.CATALOG);
                  break;
                case 2:
                  delegate.toNamed(Routes.FAVORIT);
                  break;
                case 3:
                  delegate.toNamed(Routes.CART);
                  break;
                case 4:
                  delegate.toNamed(Routes.PROFILE);
                  break;
                default:
              }
            },
            unselectedItemColor: ConstColor.gray_56,
            selectedItemColor: ConstColor.primary_black,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Главная'),
              BottomNavigationBarItem(
                icon: Icon(Icons.widgets),
                label: 'Каталог',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Избранное',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Корзина',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Профиль',
              ),
            ],
          ),
        );
      },
    );
  }

//     return Obx(() => Scaffold(
//           body: IndexedStack(
//             index: controller.selectTab.value,
//             children: _tabs,
//           ),
//           bottomNavigationBar: Container(

//             decoration: const BoxDecoration(
//                 border: Border(
//                     top: BorderSide(
//                         color: ConstColor.neutral_white, width: 0.5))),
//             child: BottomNavigationBar(
//               elevation: 0,
//               unselectedItemColor: ConstColor.gray_56,
//               currentIndex: controller.selectTab.value,
//               selectedItemColor: ConstColor.primary_black,
//               onTap: (index) {
//                 controller.setSelectItem(index: index);
//               },
//                 showSelectedLabels: true,
//   showUnselectedLabels: true,
//               items: const [
//                 BottomNavigationBarItem(
//                     icon: Icon(Icons.home),

//                     label: 'Главная'),

//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.widgets),
//                   label: 'Каталог',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.favorite_border),
//                   label: 'Избранное',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.shopping_cart),
//                   label: 'Корзина',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: 'Профиль',
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
}
