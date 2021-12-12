import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.g.dart';
part 'file.freezed.dart';

@freezed
class File with _$File {
  factory File({
    required String url,
    required String name,
    required String originalName,
    required String extension,
    required String size,
  }) = _File;

  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);
}
