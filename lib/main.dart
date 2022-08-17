import 'package:consumer_app/app/core/constants/app_routes.dart';
import 'package:consumer_app/app/core/provider/theme.provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes,
      initialRoute: '/home',
      theme: Provider.of<ThemeProvider>(context).getCurrentTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
