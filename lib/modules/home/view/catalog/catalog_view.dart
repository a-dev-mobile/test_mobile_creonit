import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';

import 'catalog_controller.dart';

class CatalogView extends GetView<CatalogController> {
  const CatalogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Каталог'),
        ),
        body: Obx(() {
          if (controller.isLoad.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.listCategory.length,
              itemBuilder: (context, index) {
                return CategoryListItem(
                    title: controller.listCategory[index].title);
              },
            );
          }
        }));
  }
}

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.access_time),
        onTap: () => log.i(title),
        // dense: true,
      ),
    );
  }
}
