// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Product',
      json,
      ($checkedConvert) {
        final val = Product(
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          slug: $checkedConvert('slug', (v) => v as String),
          price: $checkedConvert('price', (v) => (v as num).toDouble()),
          image: $checkedConvert('image', (v) => v as String),
          color: $checkedConvert('color', (v) => v as String),
        );
        return val;
      },
    );
