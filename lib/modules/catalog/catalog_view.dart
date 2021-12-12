import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/app/routes/app_pages.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';

import 'catalog_controller.dart';

class CatalogView extends GetView<CatalogController> {
  const CatalogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      if (controller.isLoad.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ListView.separated(
            itemCount: controller.listCategory.length,
            itemBuilder: (context, index) {
              return CategoryListItem(
                  title: controller.listCategory[index].title);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider());
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
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          print('asdasdasd');
          Get.rootDelegate.toNamed(Routes.PRODUCT(title));
        },
        // dense: true,
      ),
    );
  }
}
