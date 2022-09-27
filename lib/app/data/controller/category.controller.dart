import 'package:get/get.dart';

class CategoryController extends GetxController {
  var activeTab = 0.obs;

  setActiveTab(value) {
    if (activeTab.value != value) {
      activeTab.value = value;
    }
  }
}
