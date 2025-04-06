import 'package:get/state_manager.dart';

class RecipeController extends GetxController {
  final RxList _recipe =
      [
        {
          "id": 1,
          "name": "Classic Margherita Pizza",
          "ingredients": [
            "Pizza dough",
            "Tomato sauce",
            "Fresh mozzarella cheese",
            "Fresh basil leaves",
            "Olive oil",
            "Salt and pepper to taste",
          ],
          "instructions": [
            "Preheat the oven to 475°F (245°C).",
            "Roll out the pizza dough and spread tomato sauce evenly.",
            "Top with slices of fresh mozzarella and fresh basil leaves.",
            "Drizzle with olive oil and season with salt and pepper.",
            "Bake in the preheated oven for 12-15 minutes or until the crust is golden brown.",
            "Slice and serve hot.",
          ],
          "prepTimeMinutes": 20,
          "cookTimeMinutes": 15,
          "image": "https://cdn.dummyjson.com/recipe-images/1.webp",
          "mealType": "Dinner",
        },
        {
          "id": 5,
          "name": "Mango Salsa Chicken",
          "ingredients": [
            "Chicken thighs",
            "Mango, diced",
            "Red onion, finely chopped",
            "Cilantro, chopped",
            "Lime juice",
            "Jalapeño, minced",
            "Salt and pepper to taste",
            "Cooked rice for serving",
          ],
          "instructions": [
            "Season chicken thighs with salt and pepper.",
            "Grill or bake chicken until fully cooked.",
            "In a bowl, combine diced mango, chopped red onion, cilantro, minced jalapeño, and lime juice.",
            "Dice the cooked chicken and mix it with the mango salsa.",
            "Serve over cooked rice.",
          ],
          "prepTimeMinutes": 15,
          "cookTimeMinutes": 25,
          "image": "https://cdn.dummyjson.com/recipe-images/5.webp",
          "mealType": "Dinner",
        },
        {
          "id": 11,
          "name": "Chicken Biryani",
          "ingredients": [
            "Basmati rice",
            "Chicken, cut into pieces",
            "Onions, thinly sliced",
            "Tomatoes, chopped",
            "Yogurt",
            "Ginger-garlic paste",
            "Biryani masala",
            "Green chilies, sliced",
            "Fresh coriander leaves",
            "Mint leaves",
            "Ghee",
            "Salt to taste",
          ],
          "instructions": [
            "Marinate chicken with yogurt, ginger-garlic paste, biryani masala, and salt.",
            "In a pot, sauté sliced onions until golden brown. Remove half for later use.",
            "Layer marinated chicken, chopped tomatoes, half of the fried onions, and rice in the pot.",
            "Top with ghee, green chilies, fresh coriander leaves, mint leaves, and the remaining fried onions.",
            "Cover and cook on low heat until the rice is fully cooked and aromatic.",
            "Serve hot, garnished with additional coriander and mint leaves.",
          ],
          "prepTimeMinutes": 30,
          "cookTimeMinutes": 45,
          "image": "https://cdn.dummyjson.com/recipe-images/11.webp",
          "mealType": "Lunch",
        },
        {
          "id": 16,
          "name": "Japanese Ramen Soup",
          "ingredients": [
            "Ramen noodles",
            "Chicken broth",
            "Soy sauce",
            "Mirin",
            "Sesame oil",
            "Shiitake mushrooms, sliced",
            "Bok choy, chopped",
            "Green onions, sliced",
            "Soft-boiled eggs",
            "Grilled chicken slices",
            "Norwegian seaweed (nori)",
          ],
          "instructions": [
            "Cook ramen noodles according to package instructions and set aside.",
            "In a pot, combine chicken broth, soy sauce, mirin, and sesame oil. Bring to a simmer.",
            "Add sliced shiitake mushrooms and chopped bok choy. Cook until vegetables are tender.",
            "Divide the cooked noodles into serving bowls and ladle the hot broth over them.",
            "Top with green onions, soft-boiled eggs, grilled chicken slices, and nori.",
            "Serve hot and enjoy the authentic Japanese ramen!",
          ],
          "prepTimeMinutes": 20,
          "cookTimeMinutes": 25,
          "image": "https://cdn.dummyjson.com/recipe-images/16.webp",
          "mealType": "Dinner",
        },
        {
          "id": 23,
          "name": "Italian Tiramisu",
          "ingredients": [
            "Espresso, brewed and cooled",
            "Ladyfinger cookies",
            "Mascarpone cheese",
            "Heavy cream",
            "Sugar",
            "Cocoa powder",
          ],
          "instructions": [
            "In a bowl, whip heavy cream until stiff peaks form.",
            "In another bowl, mix mascarpone cheese and sugar until smooth.",
            "Gently fold the whipped cream into the mascarpone mixture.",
            "Dip ladyfinger cookies into brewed espresso and layer them in a serving dish.",
            "Spread a layer of the mascarpone mixture over the cookies.",
            "Repeat layers and finish with a dusting of cocoa powder.",
            "Chill in the refrigerator for a few hours before serving.",
            "Indulge in the decadence of this classic Italian Tiramisu!",
          ],
          "prepTimeMinutes": 30,
          "cookTimeMinutes": 0,
          "image": "https://cdn.dummyjson.com/recipe-images/23.webp",
          "mealType": "Dessert",
        },
      ].obs;

  List get recipe => _recipe;
}
