import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    changeStep(index) {
      setState(() {
        currentIndex = index;
      });
    }

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
                        children: const [
                          Text(
                            'Getting Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            'Create an account for exciting features',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    child: SizedBox(
                      width: Screen.width(context),
                      child: Center(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10000),
                          ),
                          elevation: 4,
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: RegistrationAddressDetails(),
            )
          ],
        ),
      ),
    );
  }
}
