import 'package:test_mobile_creonit_repository/src/test_mobile_creonit_repository.dart';



void main() async {
  TestMobileCreonitRepository appRepository = TestMobileCreonitRepository();

  var listCategory = await appRepository.getCategory();

  print(listCategory.toString());
  print('===========================');
  var listProduct = await appRepository.getProduct();
  print(listProduct.toString());
}
