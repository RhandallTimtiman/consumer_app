import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';

class RegistrationUserDetails extends StatefulWidget {
  const RegistrationUserDetails({Key? key}) : super(key: key);

  @override
  State<RegistrationUserDetails> createState() =>
      _RegistrationUserDetailsState();
}

class _RegistrationUserDetailsState extends State<RegistrationUserDetails> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.focused,
      MaterialState.selected,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color.fromRGBO(
        73,
        130,
        61,
        1,
      );
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Screen.width(context),
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'User Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const InfoField(
              label: 'Create Username',
              obscureText: false,
              hint: 'Enter user name',
              isEnabled: true,
              initialValue: 'Test initial value',
              prefixIcon: Icons.person_outline_rounded,
            ),
            const SizedBox(height: 20),
            InfoField(
              label: 'Create Password',
              obscureText: true,
              callback: () {},
              hint: 'Enter Password',
              isEnabled: true,
              prefixIcon: Icons.lock_rounded,
              isPassword: true,
            ),
            const SizedBox(height: 20),
            InfoField(
              label: 'Confirm Password',
              obscureText: true,
              callback: () {},
              hint: 'Enter Password',
              isEnabled: true,
              prefixIcon: Icons.lock_rounded,
              isPassword: true,
            ),
            const SizedBox(height: 20),
            InfoField(
              label: 'Email Address',
              obscureText: false,
              callback: () {},
              hint: 'Enter valid e-mail',
              isEnabled: true,
              prefixIcon: Icons.email_rounded,
            ),
            const SizedBox(height: 20),
            const InfoField(
              label: 'First Name',
              obscureText: false,
              hint: 'Enter first name',
              isEnabled: true,
              initialValue: 'Test initial value',
              prefixIcon: Icons.person_outline_rounded,
            ),
            const SizedBox(height: 20),
            const InfoField(
              label: 'M.I',
              obscureText: false,
              hint: 'Enter middle name',
              isEnabled: true,
              initialValue: 'Test initial value',
              prefixIcon: Icons.person_outline_rounded,
            ),
            const SizedBox(height: 20),
            const InfoField(
              label: 'Last Name',
              obscureText: false,
              hint: 'Enter last name',
              isEnabled: true,
              initialValue: 'Test initial value',
              prefixIcon: Icons.person_outline_rounded,
            ),
            const SizedBox(
              height: 20,
            ),
            const InfoField(
              label: 'Mobile Number',
              obscureText: false,
              hint: '00000-0000-0000',
              isEnabled: true,
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
            const InfoField(
              label: 'Referral Code',
              obscureText: false,
              hint: 'Enter user name',
              isEnabled: true,
              prefixIcon: Icons.people_rounded,
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
                  side: const BorderSide(
                    color: Color.fromRGBO(
                      73,
                      130,
                      61,
                      1,
                    ),
                  ),
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
                  color: const Color.fromRGBO(
                    73,
                    130,
                    61,
                    1,
                  ),
                  minWidth: double.infinity,
                  onPressed: () {},
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
    );
  }
}
