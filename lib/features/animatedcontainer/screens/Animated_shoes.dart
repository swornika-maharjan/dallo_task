import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/features/animatedcontainer/controller/shoes_controller.dart';
import 'package:get/get.dart';

class ShoeAdPage extends StatelessWidget {
  // Instantiate the GetX controller
  final ShoeController controller = Get.put(ShoeController());

  ShoeAdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shoe Advertisement')),
      body: Center(
        child: Obx(() {
          // Show loading indicator while fetching images
          if (controller.isLoading.value) {
            return CircularProgressIndicator();
          }

          // Ensure there are images before accessing the list
          if (controller.imageUrl.isEmpty) {
            return Text("No images available.");
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  height: 250,
                  width: 250,
                  child: CachedNetworkImage(
                    imageUrl: controller.imageUrl.first,
                    placeholder:
                        (context, url) =>
                            Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 20),

                // Display shoe name and description
                // Text(
                //   "Shoe Model XYZ",
                //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                // ),
                // SizedBox(height: 8),
                Text(
                  "The most comfortable shoe for all occasions.",
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
