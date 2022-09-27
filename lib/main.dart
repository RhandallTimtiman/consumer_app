import 'package:consumer_app/app/core/constants/app.routes.dart';
import 'package:consumer_app/app/core/constants/themes/themes.dart';
import 'package:consumer_app/app/module/binding/binding.dart';
import 'package:consumer_app/app/module/binding/main.binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().light,
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      initialBinding: MainBinding(),
      getPages: AppRoutes.routes,
    );
  }
}
