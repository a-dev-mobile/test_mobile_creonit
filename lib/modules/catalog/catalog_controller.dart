import 'package:get/get.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';
import 'package:test_mobile_creonit/core/utils/app_storage.dart';
import 'package:test_mobile_creonit_repository/test_mobile_creonit_repository.dart';

class CatalogController extends GetxController {
  late final TestMobileCreonitRepository _repository;

  RxList<Category> categories = <Category>[].obs;

  var isLoad = false.obs;

  Future<void> categoryFetched() async {
    try {
      isLoad.value = true;
      // await Future.delayed(Duration(seconds: 5), () {
      //   print(" This line is execute after 5 seconds");
      // });
      categories.value = await _repository.getCategory();
      isLoad.value = false;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  void onInit() {



    _repository = TestMobileCreonitRepository();
    categoryFetched();



    super.onInit();
  }
  @override
  void onClose() {
        Get.printInfo(info: 'category: onClose');
    super.onClose();
  }
}
