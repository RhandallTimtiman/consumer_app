import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:flutter/material.dart';

class RegistrationUserDetails extends StatelessWidget {
  const RegistrationUserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Screen.width(context),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'User Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
