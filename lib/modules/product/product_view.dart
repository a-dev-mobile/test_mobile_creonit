import 'package:flutter/material.dart';
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
        body: Obx(() {
          if (controller.isLoad.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.count(
  // primary: false,
              crossAxisCount: 2,


 childAspectRatio: 0.7,
              children: controller.listProduct
                  .map((e) => GestureDetector(
                        onTap: () {
                          print(e.title);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16,right: 16),
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
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('${e.price.toInt()} р.',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.shopping_cart))
                                    ],
                                  ),
                                ),
                              ),
                            
                            Text(e.title,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                            
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            );
          }
        }));
  }
}
