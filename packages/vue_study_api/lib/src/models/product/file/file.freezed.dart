// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

File _$FileFromJson(Map<String, dynamic> json) {
  return _File.fromJson(json);
}

/// @nodoc
class _$FileTearOff {
  const _$FileTearOff();

  _File call(
      {required String url,
      required String name,
      required String originalName,
      required String extension,
      required String size}) {
    return _File(
      url: url,
      name: name,
      originalName: originalName,
      extension: extension,
      size: size,
    );
  }

  File fromJson(Map<String, Object?> json) {
    return File.fromJson(json);
  }
}

/// @nodoc
const $File = _$FileTearOff();

/// @nodoc
mixin _$File {
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileCopyWith<File> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileCopyWith<$Res> {
  factory $FileCopyWith(File value, $Res Function(File) then) =
      _$FileCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String name,
      String originalName,
      String extension,
      String size});
}

/// @nodoc
class _$FileCopyWithImpl<$Res> implements $FileCopyWith<$Res> {
  _$FileCopyWithImpl(this._value, this._then);

  final File _value;
  // ignore: unused_field
  final $Res Function(File) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? extension = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FileCopyWith<$Res> implements $FileCopyWith<$Res> {
  factory _$FileCopyWith(_File value, $Res Function(_File) then) =
      __$FileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String name,
      String originalName,
      String extension,
      String size});
}

/// @nodoc
class __$FileCopyWithImpl<$Res> extends _$FileCopyWithImpl<$Res>
    implements _$FileCopyWith<$Res> {
  __$FileCopyWithImpl(_File _value, $Res Function(_File) _then)
      : super(_value, (v) => _then(v as _File));

  @override
  _File get _value => super._value as _File;

  @override
  $Res call({
    Object? url = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? extension = freezed,
    Object? size = freezed,
  }) {
    return _then(_File(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_File implements _File {
  _$_File(
      {required this.url,
      required this.name,
      required this.originalName,
      required this.extension,
      required this.size});

  factory _$_File.fromJson(Map<String, dynamic> json) => _$$_FileFromJson(json);

  @override
  final String url;
  @override
  final String name;
  @override
  final String originalName;
  @override
  final String extension;
  @override
  final String size;

  @override
  String toString() {
    return 'File(url: $url, name: $name, originalName: $originalName, extension: $extension, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _File &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.originalName, originalName) &&
            const DeepCollectionEquality().equals(other.extension, extension) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(originalName),
      const DeepCollectionEquality().hash(extension),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$FileCopyWith<_File> get copyWith =>
      __$FileCopyWithImpl<_File>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileToJson(this);
  }
}

abstract class _File implements File {
  factory _File(
      {required String url,
      required String name,
      required String originalName,
      required String extension,
      required String size}) = _$_File;

  factory _File.fromJson(Map<String, dynamic> json) = _$_File.fromJson;

  @override
  String get url;
  @override
  String get name;
  @override
  String get originalName;
  @override
  String get extension;
  @override
  String get size;
  @override
  @JsonKey(ignore: true)
  _$FileCopyWith<_File> get copyWith => throw _privateConstructorUsedError;
}
