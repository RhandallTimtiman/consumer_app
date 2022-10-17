import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var activeTab = 0.obs;

  setActiveTab(value) {
    if (activeTab.value != value) {
      activeTab.value = value;
    }
  }

  void searchBrand(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var result = Get.dialog(
      Dialog(
        child: SizedBox(
          height: size.height * .3,
          child: Padding(
            padding: EdgeInsets.all(
              Screen.getProportionateScreenWidth(
                context,
                20,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Type A - Z',
                  style: TextStyle(
                    fontSize: Screen.getProportionateScreenHeight(
                      context,
                      20,
                    ),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  style: TextStyle(
                    fontSize: Screen.getProportionateScreenHeight(
                      context,
                      14,
                    ),
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Screen.getProportionateScreenHeight(
                        context,
                        14,
                      ),
                      color: Colors.grey[400],
                    ),
                    hintText: 'Search Key',
                  ),
                ),
                SizedBox(
                  height: Screen.getProportionateScreenHeight(
                    context,
                    48,
                  ),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Search',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Get.back(result: false);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
