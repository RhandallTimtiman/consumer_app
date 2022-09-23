import 'package:consumer_app/app/module/screen/screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._();

  static final routes = [
    GetPage(
      name: '/',
      page: () => const MainScreen(),
    ),
    GetPage(
      name: '/home',
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: '/registration',
      page: () => const RegistrationScreen(),
    ),
    GetPage(
      name: '/profile',
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: '/family-contact',
      page: () => const FamilyContactScreen(),
    ),
  ];
}
