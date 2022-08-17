import 'package:consumer_app/app/core/provider/theme.provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<ThemeProvider>(builder: (context, theme, _) {
      return SafeArea(
        child: Container(
          height: size.height * 0.3,
          width: size.width,
          decoration: BoxDecoration(
            color: theme.getColors().primary,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(1000),
              bottomRight: Radius.circular(1000),
            ),
          ),
        ),
      );
    });
  }
}
