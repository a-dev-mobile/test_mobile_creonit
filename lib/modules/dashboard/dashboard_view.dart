import 'package:flutter/material.dart';


class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     
      body: Center(child: Text('Экран % Главное % в разработке. ',style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),)
     
    );
  }
}
