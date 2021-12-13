import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/app/routes/app_pages.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';
import 'package:test_mobile_creonit/services/app_services.dart';

import 'catalog_controller.dart';

class CatalogView extends GetView<CatalogController> {
  const CatalogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Каталог'),
        ),
        body: Obx(() {
          if (controller.isLoad.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return RefreshIndicator(
              onRefresh: () async {
                controller.categories.clear();
                await controller.categoryFetched();
              },
              child: ListView.builder(
                itemCount: controller.categories.length,
                itemBuilder: (context, index) {
                  final item = controller.categories[index];
                  return ListTile(
                    onTap: () {
                            AppServices.to.selectedCategory = item.title;
                      Get.rootDelegate.toNamed(Routes.PRODUCT);
                    },
                    title: Text(item.title),
                  );
                },
              ),
            );
          }
        }));
  }
}

