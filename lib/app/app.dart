import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_mobile_creonit/config/theme/app_theme.dart';

import 'routes/app_pages.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
          onGenerateTitle: (BuildContext context) =>
              'Test mobile creonit',

          debugShowCheckedModeBanner: false,
         
       
          themeMode: ThemeMode.light,
          // initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          
          theme: AppTheme.lightThemeData(context),
          
        );
  }
}

 

