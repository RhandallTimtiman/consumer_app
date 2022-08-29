import 'dart:developer';

import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/data/controller/controller.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationUserDetails extends StatefulWidget {
  const RegistrationUserDetails({Key? key}) : super(key: key);

  @override
  State<RegistrationUserDetails> createState() =>
      _RegistrationUserDetailsState();
}

class _RegistrationUserDetailsState extends State<RegistrationUserDetails> {
  bool isChecked = false;
  final registerUserController = Get.find<RegistrationUserController>();

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.focused,
      MaterialState.selected,
    };
    if (states.any(interactiveStates.contains)) {
      return Theme.of(context).primaryColor;
    }
    return const Color.fromRGBO(
      73,
      130,
      61,
      1,
    );
  }

  showDate() async {
    var newSelectedDate = await showDatePicker(
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        context: context,
        initialDate: DateTime.now().subtract(
          const Duration(days: 3650),
        ),
        firstDate: DateTime.now().subtract(
          const Duration(days: 3650),
        ),
        lastDate: DateTime.now(),
        builder: (context, child) {
          return Container(
            child: child,
          );
        });
    inspect(newSelectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Screen.width(context),
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Form(
          key: Get.find<RegistrationUserController>().userFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'User Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              InfoField(
                label: 'Create Username',
                obscureText: false,
                hint: 'Enter user name',
                isEnabled: true,
                initialValue: 'Test initial value',
                prefixIcon: Icons.person_outline_rounded,
                controller:
                    Get.find<RegistrationUserController>().usernameController,
                isRequired: true,
              ),
              const SizedBox(height: 20),
              Obx(
                () => InfoField(
                  label: 'Create Password',
                  obscureText:
                      Get.find<RegistrationUserController>().obscurePass.value,
                  callback: () {
                    Get.find<RegistrationUserController>().toggleObscurePass();
                  },
                  hint: 'Enter Password',
                  isEnabled: true,
                  prefixIcon: Icons.lock_rounded,
                  isPassword: true,
                  controller:
                      Get.find<RegistrationUserController>().passwordController,
                  isRequired: true,
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => InfoField(
                  label: 'Confirm Password',
                  obscureText: Get.find<RegistrationUserController>()
                      .obscureConfirmPass
                      .value,
                  callback: () {
                    Get.find<RegistrationUserController>()
                        .toggleObscureConfirmPass();
                  },
                  hint: 'Enter Password',
                  isEnabled: true,
                  prefixIcon: Icons.lock_rounded,
                  isPassword: true,
                  controller: Get.find<RegistrationUserController>()
                      .confirmPasswordController,
                  isRequired: true,
                  validator: Get.find<RegistrationUserController>()
                      .validateConfirmPassword,
                  responseValidator: 'Must match the previous entry',
                ),
              ),
              const SizedBox(height: 20),
              InfoField(
                label: 'Email Address',
                obscureText: false,
                callback: () {},
                hint: 'Enter valid e-mail',
                isEnabled: true,
                prefixIcon: Icons.email_rounded,
                controller:
                    Get.find<RegistrationUserController>().emailController,
                isRequired: true,
              ),
              const SizedBox(height: 20),
              InfoField(
                label: 'First Name',
                obscureText: false,
                hint: 'Enter first name',
                isEnabled: true,
                initialValue: 'Test initial value',
                prefixIcon: Icons.person_outline_rounded,
                controller:
                    Get.find<RegistrationUserController>().firstNameController,
                isRequired: true,
              ),
              const SizedBox(height: 20),
              InfoField(
                label: 'M.I',
                obscureText: false,
                hint: 'Enter middle name',
                isEnabled: true,
                initialValue: 'Test initial value',
                prefixIcon: Icons.person_outline_rounded,
                controller:
                    Get.find<RegistrationUserController>().middleNameController,
                isRequired: true,
              ),
              const SizedBox(height: 20),
              InfoField(
                label: 'Last Name',
                obscureText: false,
                hint: 'Enter last name',
                isEnabled: true,
                initialValue: 'Test initial value',
                prefixIcon: Icons.person_outline_rounded,
                controller:
                    Get.find<RegistrationUserController>().lastNameController,
                isRequired: true,
              ),
              const SizedBox(
                height: 20,
              ),
              InfoField(
                label: 'Mobile Number',
                obscureText: false,
                hint: '00000-0000-0000',
                isEnabled: true,
                controller: Get.find<RegistrationUserController>()
                    .mobileNumberController,
                // prefixIcon: Icons.person_outline_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              DateField(
                label: 'Birthdate',
                hint: 'MM/DD/YYYY',
                isEnabled: true,
                prefixIcon: Icons.calendar_today,
                callback: showDate,
              ),
              const SizedBox(
                height: 20,
              ),
              InfoField(
                label: 'Referral Code',
                obscureText: false,
                hint: 'Enter referral code',
                isEnabled: true,
                prefixIcon: Icons.people_rounded,
                controller: Get.find<RegistrationUserController>()
                    .referralCodeController,
                isRequired: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    side: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "I have read, understood and accept the ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                        TextSpan(
                          text: "Terms and Conditions",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: SizedBox(
                  width: Screen.width(context) * 0.7,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Theme.of(context).primaryColor,
                    minWidth: double.infinity,
                    onPressed: () {
                      Get.find<RegistrationUserController>().validateNext(
                          Get.find<RegistrationUserController>().userFormKey);
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
