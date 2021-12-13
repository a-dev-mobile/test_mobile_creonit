import 'dart:ui';

import 'package:get/get.dart';


class AppServices extends GetxService {
  static AppServices get to => Get.find();
  String selectedCategory = '';
  int categoryId = 0;

  Future<AppServices> init() async {
    return this;
  }
}
