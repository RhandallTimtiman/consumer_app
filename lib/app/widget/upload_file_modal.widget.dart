import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadFileModal extends StatefulWidget {
  final Function callback;
  const UploadFileModal({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  State<UploadFileModal> createState() => _UploadFileModalState();
}

class _UploadFileModalState extends State<UploadFileModal> {
  final picker = ImagePicker();

  Future captureImage() async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 20);
    if (pickedFile != null) {
      widget.callback(pickedFile.name);
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      height: Screen.height(context) * 0.5,
      width: Screen.width(context) * 0.7,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Upload File',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.cancel,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Screen.height(context) * 0.03,
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 18),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
              ),
            ),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => captureImage(),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.shade100,
                        ),
                        height: Screen.height(context) * 0.3,
                        width: Screen.width(context) * 0.2,
                        child: const Icon(
                          FontAwesomeIcons.camera,
                          color: Color.fromRGBO(
                            73,
                            130,
                            61,
                            1,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => captureImage(),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.shade100,
                        ),
                        height: Screen.height(context) * 0.3,
                        width: Screen.width(context) * 0.2,
                        child: const Icon(
                          Icons.upload,
                          color: Color.fromRGBO(
                            73,
                            130,
                            61,
                            1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Take a Photo or Upload File',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
