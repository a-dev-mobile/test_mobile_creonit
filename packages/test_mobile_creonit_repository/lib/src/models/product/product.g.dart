// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      id: json['id'] as int,
      isInShopCart: json['isInShopCart'] as bool? ?? false,
      colors: (json['colors'] as List<dynamic>)
          .map((e) => Colors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'id': instance.id,
      'isInShopCart': instance.isInShopCart,
      'colors': instance.colors,
    };
