import 'package:get/get.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';
import 'package:test_mobile_creonit_repository/test_mobile_creonit_repository.dart';

class ProductController extends GetxController {

  var isLoad = false.obs;


 late final TestMobileCreonitRepository _repository;
  RxList<Product> listProduct = <Product>[].obs;


  Future<void> _productFetched() async {
    try {
      isLoad.value = true;
  
      listProduct.value = await _repository.getProduct();
      isLoad.value = false;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  void onInit() {



    _repository = TestMobileCreonitRepository();
    _productFetched();

// AppStorage().setString('key', listCategory.value.from)

    super.onInit();
  }
}
