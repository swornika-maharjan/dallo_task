import 'package:flutter/material.dart';
import 'package:flutterproject/features/ecommerceapp/controller/homepage_controller.dart';
import 'package:get/get.dart';

class EcommercState extends StatelessWidget {
  EcommercState({super.key});

  final HomepageController controller = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("E-commerce App"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.saved_search_rounded),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.account_circle), text: 'Profile'),
              Tab(icon: Icon(Icons.shopping_cart), text: 'Cart'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Home Tab Content - Product List
            ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                final product = controller.products[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: Image.network(
                      product["image"],
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      product["title"],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(product["category"]),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          product["price"],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.addToCart(
                              product.map(
                                (key, value) => MapEntry(key, value.toString()),
                              ),
                            );
                          },
                          icon: Icon(Icons.add_shopping_cart),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            // Profile Tab Content
            const Center(child: Text("Profile Content")),
            // Cart Tab Content
            const Center(child: Text('Cart content')),
          ],
        ),
      ),
    );
  }
}
