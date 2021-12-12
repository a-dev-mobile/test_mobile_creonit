import 'package:get/get.dart';

class ProductController extends GetxController {
  final String titleCategory;

  ProductController(this.titleCategory);
  @override
  void onInit() {
    super.onInit();
    Get.snackbar('','Product create from category: $titleCategory');
  }

  @override
  void onClose() {

    super.onClose();
  }
}
