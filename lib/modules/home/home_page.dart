import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_mobile_creonit/modules/home/view/cart/cart_view.dart';
import 'package:test_mobile_creonit/modules/home/view/catalog/catalog_view.dart';
import 'package:test_mobile_creonit/modules/home/view/main/main_view.dart';
import 'package:test_mobile_creonit/modules/home/view/profile/Profile_view.dart';


import '../../../core/constants/colors.dart';
import 'controllers/home_controller.dart';
import 'view/favorit/favorit_view.dart';


class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  List<Widget> get _tabs => [

        const MainView(),
        const CatalogView(),
        const FavoritView(),
        const CartView(),
        const ProfileView(),
      ];
 
  @override
  Widget build(BuildContext context) {


    
    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.selectTab.value,
            children: _tabs,
          ),
          bottomNavigationBar: Container(
            
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: ConstColor.neutral_white, width: 0.5))),
            child: BottomNavigationBar(
              elevation: 0,
              unselectedItemColor: ConstColor.gray_56,
              currentIndex: controller.selectTab.value,
              selectedItemColor: ConstColor.primary_black,
              onTap: (index) {
                controller.setSelectItem(index: index);
              },
                showSelectedLabels: true,  
  showUnselectedLabels: true,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    
                    label: 'Главная'),
                    
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
          ),
        ));
  }
}
