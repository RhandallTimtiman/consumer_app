import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/data/controller/controller.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final PageController pageController = PageController(initialPage: 0);
  List<GlobalKey<FormState>> formKeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: Screen.height(context),
        child: Column(
          children: [
            SizedBox(
              height: Screen.height(context) * 0.3,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/ellipse_bg.png',
                    width: double.infinity,
                    fit: BoxFit.fill,
                    height: Screen.height(context) * .25,
                  ),
                  Positioned(
                    top: 40,
                    child: SizedBox(
                      width: Screen.width(context),
                      child: Column(
                        children: [
                          const Text(
                            'Getting Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          const Text(
                            'Create an account for exciting features',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: Screen.width(context) * 0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentPageIndex = 0;
                                    });
                                    pageController.animateToPage(
                                      0,
                                      duration:
                                          const Duration(milliseconds: 100),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 0.5,
                                        color: Colors.white,
                                      ),
                                      color: currentPageIndex == 0
                                          ? Colors.grey
                                          : null,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colors.white,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentPageIndex = 1;
                                    });
                                    pageController.animateToPage(
                                      1,
                                      duration:
                                          const Duration(milliseconds: 100),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.white,
                                      ),
                                      color: currentPageIndex == 1
                                          ? Colors.grey
                                          : null,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Text(
                                      '2',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colors.white,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentPageIndex = 2;
                                    });
                                    pageController.animateToPage(
                                      2,
                                      duration:
                                          const Duration(milliseconds: 100),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.white,
                                      ),
                                      color: currentPageIndex == 2
                                          ? Colors.grey
                                          : null,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Text(
                                      '3',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    child: SizedBox(
                      width: Screen.width(context),
                      child: Center(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10000),
                          ),
                          elevation: 4,
                          child: GestureDetector(
                            onTap: () {
                              Get.find<RegistrationController>()
                                  .showProfileModal();
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  RegistrationUserDetails(
                    formKey: formKeys[0],
                  ),
                  RegistrationAddressDetails(
                    formKey: formKeys[1],
                  ),
                  RegistrationAdditionalInformation(
                    formKey: formKeys[2],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
