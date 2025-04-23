import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerController extends GetxController {
  var imageFile = Rxn<File>();

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
    }
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagePickerScreen(),
    );
  }
}

class ImagePickerScreen extends StatelessWidget {
  final ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Picker with GetX')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () =>
                controller.imageFile.value != null
                    ? Image.file(controller.imageFile.value!, height: 200)
                    : Text('No image selected'),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => controller.pickImage(ImageSource.camera),
                child: Text('Camera'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () => controller.pickImage(ImageSource.gallery),
                child: Text('Gallery'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
