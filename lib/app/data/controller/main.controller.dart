import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/module/binding/binding.dart';
import 'package:consumer_app/app/module/screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;
  final pages = <String>[
    '/profile',
    '/registration',
    '/family-contact',
    '/home',
    '/home',
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/profile') {
      return GetPageRoute(
        settings: settings,
        page: () => const ProfileScreen(),
        binding: ProfileBinding(),
      );
    }

    if (settings.name == '/registration') {
      return GetPageRoute(
        settings: settings,
        page: () => const RegistrationScreen(),
        binding: RegistrationBinding(),
      );
    }

    if (settings.name == '/home') {
      return GetPageRoute(
        settings: settings,
        page: () => const HomeScreen(),
      );
    }

    if (settings.name == '/family-contact') {
      return GetPageRoute(
        settings: settings,
        page: () => const FamilyContactScreen(),
        binding: FamilyContactBinding(),
      );
    }
    if (settings.name == '/home') {
      return GetPageRoute(
        settings: settings,
        page: () => const FamilyContactScreen(),
        binding: FamilyContactBinding(),
      );
    }

    return null;
  }

  Widget bottomNavCard(BuildContext context, bool isActive, IconData icon,
      String label, int index) {
    return GestureDetector(
      onTap: () {
        changePage(index);
      },
      child: Container(
        constraints: BoxConstraints(
          minWidth: Screen.width(context) * 0.12,
        ),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: isActive
              ? const Color.fromRGBO(
                  38,
                  85,
                  20,
                  1,
                )
              : Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: Screen.height(context) * 0.04,
              color: Colors.white,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 9),
            ),
          ],
        ),
      ),
    );
  }
}
