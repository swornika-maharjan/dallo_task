import 'package:get/get.dart';

class HomepageController extends GetxController {
  final List<Map<String, dynamic>> products = [
    {
      "image":
          "https://media.istockphoto.com/id/1454928366/photo/female-triathlete-cycling-on-country-road.jpg?s=612x612&w=0&k=20&c=G1sW-Iu-1hkBMQMgIJ9rZkyGlX2pW3gVRDu2y4FWgSs=",
      "title": "Cycling Jersey",
      "category": "Cycling",
      "price": "\$45.99",
    },
    {
      "image":
          "https://image.made-in-china.com/2f0j00kvUbOPJrMcoZ/Wholesale-Custom-Logo-Fashion-Outdoor-Digital-Printing-Men-Long-Sleeve-Marathon-T-Shirt-Running-T-Shirt.webp",
      "title": "Performance Running T-Shirt",
      "category": "Sportswear",
      "price": "\$29.99",
    },
    {
      "image":
          "https://www.postie.co.nz/content/products/mens-active-basketball-shorts-light-blue-a-outfit-820339.jpg",
      "title": "Men's Basketball Shorts",
      "category": "Sportswear",
      "price": "\$34.99",
    },
  ];

  // Cart list (Reactive list using GetX)
  var cart = <Map<String, String>>[].obs;

  // Function to add product to cart
  void addToCart(Map<String, String> product) {
    cart.add(product);
    Get.snackbar(
      "Added to Cart",
      "${product['title']} added successfully!",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
}
