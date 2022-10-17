import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/data/controller/dynamic_form.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DynamicForm extends GetView<DynamicFormController> {
  const DynamicForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: Screen.height(context),
        width: Screen.width(context),
        child: Form(
          key: controller.formKeys,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: GetBuilder<DynamicFormController>(builder: (_) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: _.dynamicForm?.properties.map<Widget>((item) {
                          return _.getWidget(item);
                        }).toList() ??
                        [
                          Container(),
                        ],
                  );
                }),
              ),
              TextButton(
                onPressed: () {
                  if (controller.formKeys.currentState!.validate()) {
                    controller.formKeys.currentState!.save();
                  }
                },
                child: const Text('Submit'),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<DynamicFormController>(
                builder: (_) => Text(
                  _.formData.toString(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
