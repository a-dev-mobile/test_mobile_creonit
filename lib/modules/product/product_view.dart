import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/app/routes/app_pages.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';

import 'product_controller.dart';

class ProductView extends GetWidget<ProductController> {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      if (controller.isLoad.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return GridView.count(
          crossAxisCount: 2,
          children: controller.listProduct
              .map((e) => GestureDetector(
                    onTap: () {
                      print(e.title);
                    },
                    child: Image.network(e.imageUrl),
                  ))
              .toList(),
        );
      }
    }));
  }
}
