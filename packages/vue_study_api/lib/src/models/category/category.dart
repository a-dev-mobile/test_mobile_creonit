import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
   factory Category({
    required int id,
    required String title,
    required String slug,
  }) = _Category;

 factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

}

// import 'package:json_annotation/json_annotation.dart';

// part 'category.g.dart';
// @JsonSerializable()
// class Category {
//   final int id;
//   final String title;
//   final String slug;

//   const Category({
//     required this.id,
//     required this.title,
//     required this.slug,
//   });


//   factory Category.fromJson(Map<String, dynamic> json) =>
//       _$CategoryFromJson(json);


// }