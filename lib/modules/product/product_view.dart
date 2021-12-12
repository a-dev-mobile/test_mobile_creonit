import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'product_controller.dart';

class ProductView extends GetWidget<ProductController> {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'ProductDetailsView is working',
              style: TextStyle(fontSize: 20),
            ),
            Text('titleCategory: ${controller.titleCategory}')
          ],
        ),
      ),
    );
  }
}
