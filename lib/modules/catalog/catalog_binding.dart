import 'package:get/get.dart';

import 'catalog_controller.dart';

class CatalogBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CatalogController>(() => CatalogController());
  }
}
