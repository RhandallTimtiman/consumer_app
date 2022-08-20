import 'dart:io';

import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationAdditionalInfoController extends GetxController {
  TextEditingController tinNumber = TextEditingController();
  TextEditingController seniorId = TextEditingController();
  TextEditingController seniorIdNumber = TextEditingController();
  TextEditingController seniorIdNumberExpiration = TextEditingController();
  TextEditingController pwdId = TextEditingController();
  TextEditingController pwdIdNumber = TextEditingController();
  TextEditingController pwdIdNumberExpiration = TextEditingController();

  late File seniorIdImage;
  late File pwdIdImage;

  showUploadModal(String type) {
    Get.dialog(
      AlertDialog(
        // title: const Text(
        //   'Select Country',
        //   style: TextStyle(
        //     color: Colors.grey,
        //   ),
        // ),
        contentPadding: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 24,
          top: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: UploadFileModal(
          callback: (result) {
            if (type == 'senior') {
              Get.find<RegistrationAdditionalInfoController>().seniorId.text =
                  result;
            } else {
              Get.find<RegistrationAdditionalInfoController>().pwdId.text =
                  result;
            }
          },
        ),
      ),
    );
  }

  setSeniorImageId(File image) {
    seniorIdImage = image;
  }

  setPWDImageId(File image) {
    pwdIdImage = image;
  }
}
