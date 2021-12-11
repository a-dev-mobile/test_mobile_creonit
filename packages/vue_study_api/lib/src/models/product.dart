
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';
@JsonSerializable()
class Product {
  final int id;
  final String title;
  final String slug;
  final double price;

  final String image;
  final String color;

  Product(
      {required this.id,
      required this.title,
      required this.slug,
      required this.price,
      required this.image,
      required this.color});



  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

}
/* 

{
  "items": [
    {
      "id": 1,
      "title": "Детский трюковой самокат Razor Grom",
      "slug": "detskiy-tryukovoy-samokat-razor-grom",
      "image": {
        "file": {
          "url": "https://vue-study.skillbox.cc/uploads/file/7/8/b/78b533402b96e588503091b414190a7c.jpg",
          "name": "78b533402b96e588503091b414190a7c.jpg",
          "originalName": "90100219670_001.jpg",
          "extension": "jpg",
          "size": "44.2 Кб"
        }
      },
      "price": 4990,
      "colors": [
        {
          "id": 5,
          "title": "Синий",
          "code": "#73b6ea"
        },
        {
          "id": 4,
          "title": "Зелёный",
          "code": "#8be000"
        }
      ]
    },



 */


