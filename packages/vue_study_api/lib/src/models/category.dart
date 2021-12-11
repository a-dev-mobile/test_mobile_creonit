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
/* 

(Де)сериализация
Для того чтобы генерация кода работала, нам необходимо аннотировать наш код, используя следующее:

@JsonSerializable для маркировки классов, которые могут быть сериализованы
@JsonKey для предоставления строковых представлений имен полей
@JsonValue для предоставления строковых представлений значений полей
Реализовать JSONConverter для преобразования объектных представлений в JSON-представления
Для каждого файла нам также необходимо:

Импорт json_annotation
Включите сгенерированный код с помощью ключевого слова part
Включите методы fromJson для десериализации
{
  "items": [
    {
      "id": 1,
      "title": "Самокаты",
      "slug": "samokaty"
    },

 */