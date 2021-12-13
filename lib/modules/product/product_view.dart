import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/app/routes/app_pages.dart';
import 'package:test_mobile_creonit/core/constants/colors.dart';
import 'package:test_mobile_creonit/core/utils/app_log.dart';
import 'package:test_mobile_creonit/services/app_services.dart';

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
            Container(
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
                        Text('Фильтры',)
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
                        Text('По популярности'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(height: 0.5, color: ConstColor.divider,),
            Obx(() {
              if (controller.isLoad.value) {
                return LinearProgressIndicator();
              } else {
                return Flexible(
                  child: GridView.count(
                    // primary: false,
                    crossAxisCount: 2,
                        scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    childAspectRatio: 0.7,
                    children: controller.listProduct
                        .map((e) => GestureDetector(
                              onTap: () {
                                print(e.title);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
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
                                          right: 1,
                                          child: Icon(Icons.favorite_border)),
                                    ]),
                                    Container(
                                      color: ConstColor.gray_8,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${e.price.toInt()} р.',
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.shopping_cart))
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(
                                      e.title,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                );
              }
            }),
          ],
        ));
  }
}
