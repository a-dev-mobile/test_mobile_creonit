import 'package:get/get.dart';
import 'package:test_mobile_creonit/modules/cart/shop_cart_controller.dart';



class ShopCartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopCartController>(() => ShopCartController());
  }
}
