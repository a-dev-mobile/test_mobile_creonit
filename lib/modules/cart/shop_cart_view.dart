import 'package:flutter/material.dart';
import 'package:test_mobile_creonit/core/constants/colors.dart';
import 'package:test_mobile_creonit/services/app_services.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: AppServices.to.productInShopCart.length,
        itemBuilder: (context, index) {
          final item = AppServices.to.productInShopCart[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text('${item.price} р.'),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 0.5,
            color: ConstColor.divider,
          );
        },
      ),
    );
  }
}
