import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_uts/route/app_pages.dart';
import 'package:flutter_aplikasi_uts/route/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.LOGIN,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      enableLog: true,
    );
  }
}
