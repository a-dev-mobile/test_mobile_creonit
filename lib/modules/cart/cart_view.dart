import 'package:flutter/material.dart';


class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(title: const Text( 'Корзина'), ),
      body: Center(child: Text('Экран % Корзина % в разработке. ',style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),)
     
    );
  }
}
