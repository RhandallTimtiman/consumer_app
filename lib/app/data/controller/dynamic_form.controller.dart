import 'dart:convert';
import 'dart:developer';

import 'package:consumer_app/app/data/models/form_properties.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DynamicFormController extends GetxController {
  GlobalKey<FormState> formKeys = GlobalKey<FormState>();
  FormProperties? dynamicForm;
  Map<String, dynamic> formData = {};

  void getForm() async {
    String content = await rootBundle.loadString("assets/forms.json");
    Map<String, dynamic> jsonMap = json.decode(content);
    dynamicForm = FormProperties.fromJson(jsonMap);
    inspect(dynamicForm);
    update();
  }

  Widget getWidget(Properties properties) {
    switch (properties.type) {
      case 'string':
        return getTextField(properties);
      // case 'boolean':
      //   return getCheckBox(properties);
      default:
        return Container();
    }
  }

  Widget getTextField(Properties properties) {
    return TextFormField(
      onSaved: (value) {
        Map<String, dynamic> data = <String, dynamic>{};
        data[properties.id] = value;
        // inspect(data);
        addFormData(properties.id, value);
      },
      validator: (String? value) {
        if (properties.required == "true" && value!.isEmpty) {
          return 'Required';
        }
        return null;
      },
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: properties.defaultValue ?? '',
        labelText: properties.required == "true"
            ? '${properties.title} *'
            : properties.title,
      ),
    );
  }

  @override
  void onInit() {
    getForm();
    super.onInit();
  }

  addFormData(key, value) {
    formData[key] = value;
    update();
  }
}
