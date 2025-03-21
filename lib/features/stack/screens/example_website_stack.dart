import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/features/stack/controller/stack_controller.dart';
import 'package:get/get.dart';

class WebsitePage extends StatelessWidget {
  final WebsiteController controller = Get.put(WebsiteController());

  WebsitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            controller.pageTitle.value,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.teal.shade500,
      ),
      drawer: NavigationDrawer(controller: controller),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Hero Section with Background Image
                Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: controller.images[1],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 250,
                    ),
                    Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.5), // Dark overlay
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Your Partner in",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade500,
                              ),
                            ),
                            Text(
                              "Solving Business Challenges with Smart Tech Solutions",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Grid Section with Image Overlays
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: controller.images.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl: controller.images[index],
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.3),
                                    Colors.black.withOpacity(0.7),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Category ${index + 1}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),

                // List Section
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "Our Sections",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Obx(
                        () => ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.items.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Icon(
                                controller.icons[index],
                                color: Colors.teal.shade600,
                              ),
                              title: Text(controller.items[index]),
                              onTap: () {
                                controller.navigateToPage(
                                  controller.items[index],
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // Footer Section
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.teal.shade500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 10),

                      // Email with Icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email, color: Colors.white70),
                          SizedBox(width: 10),
                          Text(
                            "info@dallotech.com",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      // Phone with Icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, color: Colors.white70),
                          SizedBox(width: 10),
                          Text(
                            "+9779849933272",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      // Address with Icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_city, color: Colors.white70),
                          SizedBox(width: 10),
                          Text(
                            "Khumaltar Height Marg, Lalitpur, Nepal",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Floating Chat Button
          Positioned(
            right: 20,
            bottom: 30,
            child: FloatingActionButton(
              onPressed: () {
                print("Chat with us");
              },
              backgroundColor: Colors.white,
              child: Icon(Icons.chat, color: Colors.teal.shade500),
            ),
          ),
        ],
      ),
    );
  }
}

// Navigation Drawer
class NavigationDrawer extends StatelessWidget {
  final WebsiteController controller;
  const NavigationDrawer({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal.shade500),
            child: const Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          Obx(
            () => Column(
              children:
                  controller.items.asMap().entries.map((entry) {
                    int index = entry.key;
                    String item = entry.value;
                    return ListTile(
                      leading: Icon(
                        controller.icons[index],
                        color: Colors.teal.shade500,
                      ),
                      title: Text(item),
                      onTap: () {
                        controller.pageTitle.value = item;
                        controller.navigateToPage(item);
                        Get.back(); // Closes the drawer
                      },
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
