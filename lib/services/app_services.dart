import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppServices extends GetxService {
  static AppServices get to => Get.find();
  String selectedCategory = '';
  Future<AppServices> init() async {
    return this;
  }
}
