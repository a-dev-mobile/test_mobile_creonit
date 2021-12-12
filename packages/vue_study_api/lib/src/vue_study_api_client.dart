import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import 'package:vue_study_api/src/models/models.dart';

class ProductRequestFailure implements Exception {}

class ProductNotFoundFailure implements Exception {}

class CategoryRequestFailure implements Exception {}

class CategoryNotFoundFailure implements Exception {}

class VueStudyApiClient {
  static const _baseUrl = 'vue-study.skillbox.cc';
  final http.Client _httpClient;
  var logger = Logger();

  VueStudyApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<List<Category>> categoryFetch() async {
    final categoryRequest = Uri.https(
      _baseUrl,
      '/api/productCategories',
    );

    final categoryResponse = await _httpClient.get(categoryRequest);

    if (categoryResponse.statusCode != 200) {
      throw CategoryRequestFailure();
    }
    final categoryJson;
    try {
      categoryJson = jsonDecode(categoryResponse.body)['items'] as List;
    } catch (e) {
      logger.e(e);
      throw CategoryRequestFailure();
    }
    if (categoryJson.isEmpty) {
      throw CategoryNotFoundFailure();
    }

    return categoryJson.map<Category>((dynamic json) {
      return Category.fromJson(json as Map<String, dynamic>);
    }).toList();
  }

  Future<List<Product>> productFetch() async {
    final productRequest = Uri.https(
      _baseUrl,
      '/api/products',
    );

    final productResponse = await _httpClient.get(productRequest);

    if (productResponse.statusCode != 200) {
      throw ProductRequestFailure();
    }
    final productJson;
    try {
      productJson = jsonDecode(productResponse.body)['items'] as List;
    } catch (e) {
      logger.e(e);
      throw ProductRequestFailure();
    }
    if (productJson.isEmpty) {
      throw ProductNotFoundFailure();
    }

    return productJson.map<Product>((dynamic json) {
      return Product.fromJson(json as Map<String, dynamic>);
    }).toList();
  }
}
