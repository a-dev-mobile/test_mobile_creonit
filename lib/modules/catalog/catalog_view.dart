import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/app/routes/app_pages.dart';
import 'package:test_mobile_creonit/core/constants/colors.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';
import 'package:test_mobile_creonit/services/app_services.dart';

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
            return ListView(
              children: [
                ListTile(
                  title: const Text('Все товары категории',style: TextStyle(color: ConstColor.red),),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    AppServices.to.selectedCategory = 'Все товары категории';
                    AppServices.to.categoryId = 0;
                    Get.rootDelegate.toNamed(Routes.PRODUCT);
                  },
                ),
                Divider(
                  height: 0.5,
                  color: ConstColor.divider,
                ),
                RefreshIndicator(
                  onRefresh: () async {
                    controller.categories.clear();
                    await controller.categoryFetched();
                  },
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: controller.categories.length,
                    itemBuilder: (context, index) {
                      final item = controller.categories[index];
                      return ListTile(
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          AppServices.to.selectedCategory = item.title;
                          AppServices.to.categoryId = item.id;
                          Get.rootDelegate.toNamed(Routes.PRODUCT);
                        },
                        title: Text(item.title),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        height: 0.5,
                        color: ConstColor.divider,
                      );
                    },
                  ),
                ),
              ],
            );
          }
        }));
  }
}
