import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/data/controller/controller.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RegistrationAddressDetails extends StatefulWidget {
  const RegistrationAddressDetails({Key? key}) : super(key: key);

  @override
  State<RegistrationAddressDetails> createState() =>
      _RegistrationAddressDetailsState();
}

class _RegistrationAddressDetailsState
    extends State<RegistrationAddressDetails> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Screen.width(context),
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: GetBuilder<RegistrationAddressrController>(builder: (_) {
          return Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Address Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InfoField(
                  controller: _.countryController,
                  label: 'Country',
                  obscureText: false,
                  hint: 'Select country',
                  readonly: true,
                  isEnabled: true,
                  initialValue: '',
                  prefixIcon: Icons.public,
                  suffixIcon: Icons.arrow_drop_down,
                  callback: Get.find<RegistrationAddressrController>()
                      .showModalCountries,
                ),
                const SizedBox(height: 15),
                InfoField(
                  controller: _.countryController,
                  label: 'Region',
                  obscureText: false,
                  hint: 'Select region',
                  readonly: true,
                  isEnabled: true,
                  initialValue: '',
                  prefixIcon: Icons.public,
                  suffixIcon: Icons.arrow_drop_down,
                  callback: Get.find<RegistrationAddressrController>()
                      .showModalCountries,
                ),
                const SizedBox(height: 15),
                InfoField(
                  controller: _.countryController,
                  label: 'State / Province',
                  obscureText: false,
                  hint: 'Select State / Province',
                  readonly: true,
                  isEnabled: true,
                  initialValue: '',
                  prefixIcon: Icons.public,
                  suffixIcon: Icons.arrow_drop_down,
                  callback: Get.find<RegistrationAddressrController>()
                      .showModalCountries,
                ),
                const SizedBox(height: 15),
                InfoField(
                  controller: _.countryController,
                  label: 'City',
                  obscureText: false,
                  hint: 'Select city',
                  readonly: true,
                  isEnabled: true,
                  initialValue: '',
                  prefixIcon: Icons.public,
                  suffixIcon: Icons.arrow_drop_down,
                  callback: Get.find<RegistrationAddressrController>()
                      .showModalCountries,
                ),
                const SizedBox(height: 15),
                InfoField(
                  controller: _.countryController,
                  label: 'Barangay',
                  obscureText: false,
                  hint: 'Select barangay',
                  readonly: true,
                  isEnabled: true,
                  initialValue: '',
                  prefixIcon: Icons.public,
                  suffixIcon: Icons.arrow_drop_down,
                  callback: Get.find<RegistrationAddressrController>()
                      .showModalCountries,
                ),
                const SizedBox(height: 15),
                const InfoField(
                  label: 'Zip Code',
                  obscureText: false,
                  hint: 'Enter zip code',
                  isEnabled: true,
                  initialValue: 'Test initial value',
                ),
                const SizedBox(height: 15),
                const InfoField(
                  label: 'Map Address',
                  obscureText: false,
                  hint: 'Select map address',
                  isEnabled: true,
                  readonly: true,
                  initialValue: 'Test initial value',
                  prefixIcon: Icons.map,
                  suffixIcon: FontAwesomeIcons.locationDot,
                ),
                const SizedBox(height: 15),
                const InfoField(
                  label: 'Additional Address Information (ie.bldg, etc)',
                  obscureText: false,
                  hint: 'Enter additional information (optional)',
                  isEnabled: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.grey,
                        onPressed: () {},
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
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
                        onPressed: () {},
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
