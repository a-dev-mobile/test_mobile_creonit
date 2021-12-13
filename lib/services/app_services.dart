import 'dart:ui';

import 'package:get/get.dart';
import 'package:test_mobile_creonit_repository/test_mobile_creonit_repository.dart';


class AppServices extends GetxService {
  static AppServices get to => Get.find();
  String selectedCategory = '';
  int categoryId = 0;
  RxList<Product> productInShopCart = <Product>[].obs;



  Future<AppServices> init() async {
    return this;
  }
}
