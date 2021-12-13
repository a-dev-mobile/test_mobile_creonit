import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';
import 'package:test_mobile_creonit/services/app_services.dart';
import 'package:test_mobile_creonit_repository/test_mobile_creonit_repository.dart';

class ProductController extends GetxController {
  var isLoad = false.obs;
  late final TestMobileCreonitRepository _repository;
  RxList<Product> listProduct = <Product>[].obs;




  Future<List<Product>> _productFetched(
      {int categoryId = 0, int limit = 0}) async {
    List<Product> products = [];
    try {
      isLoad.value = true;
     
      products =
          await _repository.getProduct(categoryId: categoryId, limit: limit);
      isLoad.value = false;
    } catch (e) {
      logger.e(e);
    }

    return products;
  }


  @override
  void onInit() async {
    _repository = TestMobileCreonitRepository();
    listProduct.value = await _productFetched(
        categoryId: AppServices.to.categoryId);

    super.onInit();
  }
}
