import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vue_study_api/src/models/product/file/file.dart';



part 'image.g.dart';
part 'image.freezed.dart';

@freezed
class Image with _$Image {
  factory Image({required File file}) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
