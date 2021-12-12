// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Colors _$ColorsFromJson(Map<String, dynamic> json) {
  return _Colors.fromJson(json);
}

/// @nodoc
class _$ColorsTearOff {
  const _$ColorsTearOff();

  _Colors call({required int id, required String title, required String code}) {
    return _Colors(
      id: id,
      title: title,
      code: code,
    );
  }

  Colors fromJson(Map<String, Object?> json) {
    return Colors.fromJson(json);
  }
}

/// @nodoc
const $Colors = _$ColorsTearOff();

/// @nodoc
mixin _$Colors {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorsCopyWith<Colors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsCopyWith<$Res> {
  factory $ColorsCopyWith(Colors value, $Res Function(Colors) then) =
      _$ColorsCopyWithImpl<$Res>;
  $Res call({int id, String title, String code});
}

/// @nodoc
class _$ColorsCopyWithImpl<$Res> implements $ColorsCopyWith<$Res> {
  _$ColorsCopyWithImpl(this._value, this._then);

  final Colors _value;
  // ignore: unused_field
  final $Res Function(Colors) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ColorsCopyWith<$Res> implements $ColorsCopyWith<$Res> {
  factory _$ColorsCopyWith(_Colors value, $Res Function(_Colors) then) =
      __$ColorsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String code});
}

/// @nodoc
class __$ColorsCopyWithImpl<$Res> extends _$ColorsCopyWithImpl<$Res>
    implements _$ColorsCopyWith<$Res> {
  __$ColorsCopyWithImpl(_Colors _value, $Res Function(_Colors) _then)
      : super(_value, (v) => _then(v as _Colors));

  @override
  _Colors get _value => super._value as _Colors;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_Colors(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Colors implements _Colors {
  _$_Colors({required this.id, required this.title, required this.code});

  factory _$_Colors.fromJson(Map<String, dynamic> json) =>
      _$$_ColorsFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String code;

  @override
  String toString() {
    return 'Colors(id: $id, title: $title, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Colors &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$ColorsCopyWith<_Colors> get copyWith =>
      __$ColorsCopyWithImpl<_Colors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorsToJson(this);
  }
}

abstract class _Colors implements Colors {
  factory _Colors(
      {required int id,
      required String title,
      required String code}) = _$_Colors;

  factory _Colors.fromJson(Map<String, dynamic> json) = _$_Colors.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$ColorsCopyWith<_Colors> get copyWith => throw _privateConstructorUsedError;
}
