import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Профиль'),
        ),
        body: const Center(
          child: Text(
            'Экран % Профиль % в разработке. ',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
