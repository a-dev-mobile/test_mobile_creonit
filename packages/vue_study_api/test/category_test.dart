import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
import 'package:vue_study_api/vue_study_api.dart';



void main() {
  group('Category', () {
    group('fromJson', () {
      test('throws CheckedFromJsonException when enum is unknown', () {
        expect(
          () => Category.fromJson(<String, dynamic>{
             "id": 1,
            "title": "Самокаты",
            "slug": "samokaty"
          }),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });
  });
}