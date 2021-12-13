import 'package:get/get.dart';
import 'package:test_mobile_creonit/services/app_services.dart';

class ShopCartController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    AppServices.to.productInShopCart.clear();
    super.onClose();
  }
}
