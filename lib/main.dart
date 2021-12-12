import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import 'app/app.dart';
import 'services/app_services.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  // Logger.level = Level.nothing; //TODO on LOG

await GetStorage.init();
    await Get.putAsync(() => AppServices().init());
  await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}
