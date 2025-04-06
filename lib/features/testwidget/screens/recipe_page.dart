import 'package:flutter/material.dart';
import 'package:flutterproject/task/theme/task_theme.dart';
import '../component/recipes_component.dart';
import '../controller/recipe_controller.dart';
import 'package:get/get.dart';

class RecipePage extends StatelessWidget {
  RecipePage({super.key});
  final RecipeController controller = Get.put(RecipeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RECIPES", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SizedBox(
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: controller.recipe.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Image.network(controller.recipe[index]['image']),

                      SizedBox(height: 15),
                      Text(
                        '${controller.recipe[index]['name']}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ingredients',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              controller.recipe[index]['ingredients'].length,
                              (i) {
                                return Text(
                                  '${i + 1}. ${controller.recipe[index]['ingredients'][i]}',
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Instructions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(controller.recipe.length, (
                              i,
                            ) {
                              return Text(
                                '${i + 1}. ${controller.recipe[index]['instructions'][i]}',
                              );
                            }),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'PrepTimeMinutes: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '${controller.recipe[index]['prepTimeMinutes']}',
                              ),
                            ],
                          ),

                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'CookTimeMinutes: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '${controller.recipe[index]['cookTimeMinutes']}',
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'MealType:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 10),
                              RecipesComponent(
                                color:
                                    controller.recipe[index]['mealType'] ==
                                            'Dinner'
                                        ? AppColors.firebackground
                                        : controller
                                                .recipe[index]['mealType'] ==
                                            'Lunch'
                                        ? AppColors.dental
                                        : controller
                                                .recipe[index]['mealType'] ==
                                            'Dessert'
                                        ? AppColors.newgreen
                                        : AppColors.beginner,
                              ),
                              SizedBox(width: 5),
                              Text('${controller.recipe[index]['mealType']}'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
