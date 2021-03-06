import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/app/routes/app_pages.dart';
import 'package:test_mobile_creonit/core/constants/colors.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';
import 'package:test_mobile_creonit/services/app_services.dart';
import 'package:test_mobile_creonit_repository/test_mobile_creonit_repository.dart';

import 'product_controller.dart';

class ProductView extends GetWidget<ProductController> {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(AppServices.to.selectedCategory), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ]),
        body: Column(
          children: [
            const FiltersSortingWidget(),
            Divider(
              height: 0.5,
              color: ConstColor.divider,
            ),
            Obx(() {
              if (controller.isLoad.value) {
                return const LinearProgressIndicator();
              } else {
                return listProduct();
              }
            }),
          ],
        ));
  }

  Widget listProduct() {
    return Flexible(
      child: GridView.count(
        // primary: false,
        crossAxisCount: 2,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        childAspectRatio: 0.7,
        children: controller.listProduct
            .map((e) => GestureDetector(
                  onTap: () {
                    print(e.title);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: NetworkImage(
                                      e.imageUrl,
                                    ))),
                          ),
                          const Positioned(
                              right: 1, child: Icon(Icons.favorite_border)),
                        ]),
                        Container(
                          color: ConstColor.gray_8,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${e.price.toInt()} ??.',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                IconButton(
                                    onPressed: () {
                                      
                                      final int index = controller.listProduct
                                          .indexWhere(
                                              (element) => element.id == e.id);

                                      controller.listProduct[index] =
                                          e.copyWith(
                                              isInShopCart: !e.isInShopCart);

                                      AppServices.to.productInShopCart.add(e);
                                      Get.snackbar(
                                          '?????????????????? ?? ??????????????', e.title);
                                    },
                                    icon: Icon(Icons.shopping_cart,
                                        color: e.isInShopCart
                                            ? Colors.red
                                            : ConstColor.primary_black))
                              ],
                            ),
                          ),
                        ),
                        Text(
                          e.title,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class FiltersSortingWidget extends StatelessWidget {
  const FiltersSortingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'assets/svg/filter.svg',
                    color: ConstColor.primary_black,
                  ),
                ),
                const Text(
                  '??????????????',
                )
              ],
            ),
          ),
          VerticalDivider(
            width: 20,
            thickness: 0.5,
            indent: 8,
            endIndent: 8,
            color: ConstColor.divider,
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'assets/svg/sorting.svg',
                    color: ConstColor.primary_black,
                  ),
                ),
                const Text('???? ????????????????????????'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
