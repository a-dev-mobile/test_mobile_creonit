
import 'package:vue_study_api/src/models/models.dart';
import 'package:vue_study_api/src/vue_study_api_client.dart';

void main() async {
  VueStudyApiClient apiClient = VueStudyApiClient();

  List<Category> category = await apiClient.fetchCategoies();

  print('category.toString()');
  print(category.toString());

  print('===================');

  List<Product> product = await apiClient.fetchProducts(limit:  5,categoryId: 1);

  print('product.toString()');
  print(product.toString());

}
