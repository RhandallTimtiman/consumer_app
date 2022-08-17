import 'package:consumer_app/app/module/screen/screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._();

  static final routes = [
    GetPage(
      name: '/home',
      page: () => const HomeScreen(),
    ),
  ];
}
