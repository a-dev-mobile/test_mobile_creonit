import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:test_mobile_creonit/core/utils/app_log.dart';

import 'package:test_mobile_creonit_repository/test_mobile_creonit_repository.dart';

class CatalogController extends GetxController {
  final TestMobileCreonitRepository _repository = TestMobileCreonitRepository();

  RxList<Category> categories = <Category>[].obs;

  var isLoad = false.obs;

  Future<void> categoryFetched() async {
     
    isLoad.value = true;
    try {
      // await Future.delayed(Duration(seconds: 5), () {
      //   print(" This line is execute after 5 seconds");
      // });
      categories.value = await _repository.getCategory();

      GetStorage().write('categories', categories.map((e) => e.toJson()).toList());

      isLoad.value = false;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  void onInit() {
    List? storedCategories = GetStorage().read<List>('categories');
    if (storedCategories != null) {
      categories =
          storedCategories.map((e) => Category.fromJson(e)).toList().obs;
    } else {
    
      categoryFetched();
    }


    super.onInit();
  }

  @override
  void onClose() {
    Get.printInfo(info: 'category: onClose');
    super.onClose();
  }
}
