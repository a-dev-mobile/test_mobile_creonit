import 'package:vue_study_api/src/models/category.dart';
import 'package:vue_study_api/src/vue_study_api_client.dart';

void main() async {
  VueStudyApiClient apiClient = VueStudyApiClient();

  List<Category> category = await apiClient.categoryFetch();

  print('category.toString()');
  print(category.toString());
}
