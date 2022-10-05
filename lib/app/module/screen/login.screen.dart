import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/data/controller/controller.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color.fromRGBO(186, 221, 214, 1),
        height: Screen.height(context),
        width: Screen.width(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              height: Screen.height(context) * 0.7,
              width: Screen.width(context) * 0.9,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  AuthInputField(
                    label: 'Username',
                    obscureText: false,
                    hint: '',
                    isEnabled: true,
                    prefixIcon: Icons.person_outline_rounded,
                    controller: Get.find<LoginController>().usernameController,
                    isRequired: true,
                  ),
                  const SizedBox(height: 20),
                  Obx(
                    () => AuthInputField(
                      label: 'Password',
                      obscureText:
                          Get.find<LoginController>().obscurePass.value,
                      callback: () {
                        Get.find<LoginController>().toggleObscurePass();
                      },
                      hint: '',
                      isEnabled: true,
                      prefixIcon: Icons.lock_rounded,
                      isPassword: true,
                      controller:
                          Get.find<LoginController>().passwordController,
                      isRequired: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forget?',
                        style: TextStyle(
                          color: Color.fromRGBO(62, 128, 188, 1),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      color: Theme.of(context).primaryColor,
                      minWidth: double.infinity,
                      onPressed: () {
                        Get.toNamed('/main');
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          height: 0.3,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: const Text(
                          'or log in with',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          height: 0.3,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          color: const Color.fromRGBO(56, 119, 234, 1),
                          minWidth: double.infinity,
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'Facebook',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 40,
                          child: Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: Screen.height(context) * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            width: double.infinity,
                            child: const Center(
                              child: Text(
                                'Google',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 40,
                          child: Image(
                            image: const AssetImage(
                              'assets/icons/google_icon.png',
                            ),
                            height: Screen.height(context) * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/registration');
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Screen.height(context) * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
