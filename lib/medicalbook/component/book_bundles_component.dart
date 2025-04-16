import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/black_friday_component.dart';
import 'package:flutterproject/medicalbook/component/buttons_component.dart';
import 'package:flutterproject/medicalbook/component/equipment_component.dart';
import 'package:flutterproject/medicalbook/component/featured_component.dart';
import 'package:flutterproject/medicalbook/component/launching_soon_component.dart';
import 'package:flutterproject/medicalbook/component/refer_component.dart';
import 'package:flutterproject/medicalbook/component/shop_collections_component.dart';
import 'package:flutterproject/medicalbook/controller/carousel_controller.dart';
import 'package:flutterproject/medicalbook/screens/more_options_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:get/get.dart';

class BookBundlesComponent extends StatefulWidget {
  const BookBundlesComponent({super.key});

  @override
  State<BookBundlesComponent> createState() => _BookBundlesComponentState();
}

class _BookBundlesComponentState extends State<BookBundlesComponent> {
  final CarouselIndexController controller = Get.put(CarouselIndexController());
  final int _totalSlides = 6;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: CarouselSlider(
            disableGesture: true,
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              enlargeCenterPage: false,
              viewportFraction: 1.0, // one full item at a time
              onPageChanged: (index, reason) {
                controller.updateIndex(index);
              },
            ),
            items: List.generate(6, (index) {
              return _buildBundlesContainer(context);
            }),
          ),
        ),
        SizedBox(
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_totalSlides, (index) {
                bool isActive = controller.currentIndex.value == index;
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: isActive ? 20 : 8,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: isActive ? DTColor.orange : DTColor.greyLite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
            ),
          ),
        ),

        SizedBox(height: 10),
        SizedBox(
          height: 47,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ButtonsComponent(
                text: 'New arrivals',
                imagepath: 'assets/images/newarrivals.png',
                width: 115,
              );
            },
          ),
        ),

        SizedBox(height: 15),
        FeaturedComponent(
          text: 'Featured',
          imagepath: 'assets/images/featured.png',

          hurryup: AppColors.medicalbook,
          size: 16,
        ),
        SizedBox(height: 20),

        BlackFridayComponent(),
        SizedBox(height: 20),

        //container for new arrivals
        FeaturedComponent(
          text: 'New Arrivals',
          imagepath: 'assets/images/newarrivals.png',

          size: 16,

          hurryup: AppColors.medicalbook,
        ),
        SizedBox(height: 20),

        //container for best sellers
        FeaturedComponent(
          text: 'Best Sellers',
          imagepath: 'assets/images/bestsellers.png',

          size: 16,

          hurryup: AppColors.medicalbook,
        ),
        SizedBox(height: 10),

        ShopCollectionsComponent(),
        LaunchingSoonComponent(
          imagepath:
              'https://heritagebooks.com.np/wp-content/uploads/2025/02/Astanga-Hridayam.jpg',
        ),
        EquipmentComponent(),
        SizedBox(height: 20),
        ReferComponent(),
        SizedBox(height: 10),
        SizedBox(height: 200, width: 500, child: MoreOptionsScreen()),
      ],
    );
  }

  Widget _buildBundlesContainer(BuildContext context) {
    return Container(
      height: 200,
      width: 410,
      decoration: BoxDecoration(color: AppColors.bundlesbox),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Medical Book Bundles',
                    style: TextStyle(
                      color: AppColors.medicalbook,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Explore thousands of medical materials, exclusive subscription packages, and more.',
                    style: TextStyle(
                      color: AppColors.description,
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      color: AppColors.shopbox,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(color: AppColors.dentbox),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            // SizedBox(width: 25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/books.png',
                    height: 150,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
