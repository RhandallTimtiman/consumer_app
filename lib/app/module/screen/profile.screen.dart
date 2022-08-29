import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
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
                      child: Center(
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10000),
                          ),
                          elevation: 4,
                          child: GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    child: SizedBox(
                      width: Screen.width(context),
                      child: Column(
                        children: const [
                          Text(
                            'Juan Dela Cruz',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '0912 345 6789',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ProfileUserDetails(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
