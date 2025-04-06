import 'package:get/get.dart';

class ProfileController extends GetxController {
  final RxList _posts =
      [
        {
          "id": 1,
          "title": "His mother had always taught him",
          "body":
              "His mother had always taught him not to ever think of himself as better than others. He'd tried to live by this motto. He never looked down on those who were less fortunate or who had less money than him. But the stupidity of the group of people he was talking to made him change his mind.",
          "tags": ["history", "american", "crime"],
          "reactions": {"likes": 192, "dislikes": 25},
          "views": 305,
          "userId": 121,
        },
        {
          "id": 2,
          "title": "He was an expert but not in a discipline",
          "body":
              "He was an expert but not in a discipline that anyone could fully appreciate. He knew how to hold the cone just right so that the soft server ice-cream fell into it at the precise angle to form a perfect cone each and every time. It had taken years to perfect and he could now do it without even putting any thought behind it.",
          "tags": ["french", "fiction", "english"],
          "reactions": {"likes": 859, "dislikes": 32},
          "views": 4884,
          "userId": 91,
        },
        {
          "id": 3,
          "title": "Dave watched as the forest burned up on the hill.",
          "body":
              "Dave watched as the forest burned up on the hill, only a few miles from her house. The car had been hastily packed and Marta was inside trying to round up the last of the pets. Dave went through his mental list of the most important papers and documents that they couldn't leave behind. He scolded himself for not having prepared these better in advance and hoped that he had remembered everything that was needed. He continued to wait for Marta to appear with the pets, but she still was nowhere to be seen.",
          "tags": ["magical", "history", "french"],
          "reactions": {"likes": 1448, "dislikes": 39},
          "views": 4152,
          "userId": 16,
        },
      ].obs;

  final RxList _products =
      [
        {
          "id": 1,
          "title": "Essence Mascara Lash Princess",
          "description":
              "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
          "category": "beauty",
          "price": 9.99,
          "discountPercentage": 7.17,
          "rating": 4.94,
          "stock": 5,
          "tags": ["beauty", "mascara"],
          "brand": "Essence",
          "sku": "RCH45Q1A",
          "weight": 2,
          "dimensions": {"width": 23.17, "height": 14.43, "depth": 28.01},
        },
        {
          "id": 6,
          "title": "Calvin Klein CK One",
          "description":
              "CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It's a versatile fragrance suitable for everyday wear.",
          "category": "fragrances",
          "price": 49.99,
          "discountPercentage": 0.32,
          "rating": 4.85,
          "stock": 17,
          "tags": ["fragrances", "perfumes"],
          "brand": "Calvin Klein",
          "sku": "DZM2JQZE",
          "weight": 5,
          "dimensions": {"width": 11.53, "height": 14.44, "depth": 6.81},
        },
        {
          "id": 11,
          "title": "Annibale Colombo Bed",
          "description":
              "The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.",
          "category": "furniture",
          "price": 1899.99,
          "discountPercentage": 0.29,
          "rating": 4.14,
          "stock": 47,
          "tags": ["furniture", "beds"],
          "brand": "Annibale Colombo",
          "sku": "4KMDTZWF",
          "weight": 3,
          "dimensions": {"width": 28.75, "height": 26.88, "depth": 24.47},
        },
        {
          "id": 16,
          "title": "Apple",
          "description":
              "Fresh and crisp apples, perfect for snacking or incorporating into various recipes.",
          "category": "groceries",
          "price": 1.99,
          "discountPercentage": 1.97,
          "rating": 2.96,
          "stock": 9,
          "tags": ["fruits"],
          "sku": "QTROUV79",
          "weight": 8,
          "dimensions": {"width": 8.29, "height": 5.58, "depth": 12.41},
        },
        {
          "id": 21,
          "title": "Cucumber",
          "description":
              "Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.",
          "category": "groceries",
          "price": 1.49,
          "discountPercentage": 11.44,
          "rating": 4.71,
          "stock": 22,
          "tags": ["vegetables"],
          "sku": "6KGF2K6Z",
          "weight": 9,
          "dimensions": {"width": 11.04, "height": 20.5, "depth": 8.18},
        },
      ].obs;

  List get posts => _posts;
  List get products => _products;
}
