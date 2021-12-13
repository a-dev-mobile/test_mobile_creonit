import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_mobile_creonit_repository/src/models/product/colors/colors.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String title,
    required double price,
    required String imageUrl,
    required int id,
    @Default(false) bool isInShopCart,

    required List<Colors> colors,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
