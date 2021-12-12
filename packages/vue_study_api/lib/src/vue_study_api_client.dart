import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vue_study_api/src/models/category.dart';

class ProductRequestFailure implements Exception {}

class ProductNotFoundFailure implements Exception {}

class CategoryRequestFailure implements Exception {}

class CategoryNotFoundFailure implements Exception {}

class VueStudyApiClient {
  static const _baseUrl = 'vue-study.skillbox.cc';
  final http.Client _httpClient;

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

    final categoryJson = jsonDecode(categoryResponse.body)['items'] as List;

    if (categoryJson.isEmpty) {
      throw CategoryNotFoundFailure();
    }

    return categoryJson.map((dynamic json) {
      return Category.fromJson(json as Map<String, dynamic>); 
    }).toList();
  }
}
