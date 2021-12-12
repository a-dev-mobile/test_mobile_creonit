import 'package:flutter/material.dart';


class FavoritView extends StatelessWidget {
  const FavoritView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
     
      body: Center(child: Text('Экран % Избранное % в разработке. ',style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),)
     
    );
  }
}
