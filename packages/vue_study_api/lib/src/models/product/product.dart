import 'package:freezed_annotation/freezed_annotation.dart';



import 'colors/colors.dart';
import 'image/image.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String title,
    required String slug,
    required double price,
    required Image image,
    required List<Colors> colors,
   
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}







