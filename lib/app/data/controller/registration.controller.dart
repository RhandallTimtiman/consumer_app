import 'dart:io';

import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';

class RegistrationController extends GetxController {
  CroppedFile? profileImage;

  showProfileModal() {
    Get.dialog(
      AlertDialog(
        contentPadding: const EdgeInsets.only(
          bottom: 8,
          top: 8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: ProfileModal(
          callback: (CroppedFile? result) {
            if (result != null) {
              profileImage = result;
            }
            Get.back();
          },
        ),
      ),
    );
  }

  bool validateImage(CroppedFile image) {
    var processedImage = File(image.path);
    var size = processedImage.readAsBytesSync().lengthInBytes;
    final kb = size / 1024;
    final mb = kb / 1024;
    return mb < 2;
  }

  setProfileImage(CroppedFile image) {
    profileImage = image;
    update();
  }
}
