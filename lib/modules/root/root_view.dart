import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mobile_creonit/app/routes/app_pages.dart';

import 'root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        final title = current?.location;
        return Scaffold(
//  appBar: AppBar(title: Text(title!),),
          body: GetRouterOutlet(
            initialRoute: Routes.HOME,
            // initialRoute: Routes.SPLASH,
          ),
        );
      },
    );
  }
}
