import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController referralCodeController = TextEditingController();
  RxBool isEdit = false.obs;

  toggleEdit() {
    isEdit.toggle();
  }

  setupProfile() {
    usernameController.text = 'Juandelacruz2022';
    emailController.text = 'juandelacruz@mail.com';
    firstNameController.text = 'Juan';
    middleNameController.text = 'A';
    lastNameController.text = 'Dela Cruz';
    mobileNumberController.text = '+63 912 345 6789';
    birthdateController.text = '05/22/1987';
  }

  @override
  void onInit() {
    setupProfile();
    super.onInit();
  }
}
