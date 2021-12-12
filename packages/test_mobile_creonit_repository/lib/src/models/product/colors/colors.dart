import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors.g.dart';
part 'colors.freezed.dart';

@freezed
class Colors with _$Colors {
  factory Colors({required String title, required String code}) = _Colors;


factory Colors.fromJson(Map<String, dynamic> json) =>
      _$ColorsFromJson(json);

}
