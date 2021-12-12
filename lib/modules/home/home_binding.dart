import 'package:get/get.dart';
import 'package:test_mobile_creonit/modules/home/view/catalog/catalog_controller.dart';
import 'package:test_mobile_creonit_repository/test_mobile_creonit_repository.dart';

import 'controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CatalogController>(
        () => CatalogController(TestMobileCreonitRepository()));
  }
}
