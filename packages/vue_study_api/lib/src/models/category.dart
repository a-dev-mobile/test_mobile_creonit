import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';
@JsonSerializable()
class Category {
  final int id;
  final String title;
  final String slug;

  const Category({
    required this.id,
    required this.title,
    required this.slug,
  });


  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);


}