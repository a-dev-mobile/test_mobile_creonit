import 'package:test_mobile_creonit_repository/src/models/product/colors/colors.dart';
import 'package:test_mobile_creonit_repository/test_mobile_creonit_repository.dart';
import 'package:vue_study_api/vue_study_api.dart' hide Category, Product;

import 'models/product/product.dart';

class TestMobileCreonitFailure implements Exception {}

class TestMobileCreonitRepository {
  final VueStudyApiClient _apiClient;

  TestMobileCreonitRepository({VueStudyApiClient? apiClient})
      : _apiClient = apiClient ?? VueStudyApiClient();

  Future<List<Category>> getCategory() async {
    final data = await _apiClient.categoryFetch();
    return data.map((item) {
      return Category(title: item.title);
    }).toList();
  }

  Future<List<Product>> getProduct() async {
    final data = await _apiClient.productFetch();
    return data.map((item) {
      return Product(
        title: item.title,
        colors: item.colors.map((item) {
          return Colors(title: item.title, code: item.code);
        }).toList(),
        imageUrl: item.image.file.url,
        price: item.price,
      );
    }).toList();
  }
}
