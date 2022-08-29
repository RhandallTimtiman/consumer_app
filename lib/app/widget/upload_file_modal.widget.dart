import 'dart:developer';
import 'dart:io';

import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
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
      CroppedFile? croppedFile = await cropCustomImage(File(pickedFile.path));
      if (croppedFile != null) {
        widget.callback(croppedFile);
      }
    }
  }

  Future getImageFromFiles() async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 20);
    if (pickedFile != null) {
      CroppedFile? croppedFile = await cropCustomImage(File(pickedFile.path));
      inspect(croppedFile);
      if (croppedFile != null) {
        widget.callback(croppedFile);
      }
      // Get.back();
    }
  }

  Future<CroppedFile?> cropCustomImage(File imagefile) async {
    return await ImageCropper().cropImage(
      aspectRatio: const CropAspectRatio(ratioX: 16, ratioY: 9),
      sourcePath: imagefile.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
      ],
      compressFormat: ImageCompressFormat.png,
      uiSettings: [
        AndroidUiSettings(
          toolbarColor: Colors.black,
          toolbarTitle: 'Senior Citizen Id',
          toolbarWidgetColor: Colors.white,
          hideBottomControls: true,
          lockAspectRatio: true,
          showCropGrid: false,
        ),
        IOSUiSettings(
          rotateButtonsHidden: true,
          rotateClockwiseButtonHidden: true,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      constraints: BoxConstraints(maxHeight: Screen.height(context) * 0.55),
      width: Screen.width(context) * 0.7,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Column(
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
                            child: Icon(
                              FontAwesomeIcons.camera,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => getImageFromFiles(),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade100,
                            ),
                            height: Screen.height(context) * 0.3,
                            width: Screen.width(context) * 0.2,
                            child: Icon(
                              Icons.upload,
                              color: Theme.of(context).primaryColor,
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
        ],
      ),
    );
  }
}
