import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/black_friday_component.dart';
import 'package:flutterproject/medicalbook/component/buttons_component.dart';
import 'package:flutterproject/medicalbook/component/featured_component.dart';
import 'package:flutterproject/medicalbook/component/shop_collections_component.dart';
import 'package:flutterproject/theme/task_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BookBundlesComponent extends StatelessWidget {
  BookBundlesComponent({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView(
            controller: _controller,
            children: [
              _buildBundlesContainer(context),
              _buildBundlesContainer(context),
              _buildBundlesContainer(context),
              _buildBundlesContainer(context),
            ],
          ),
        ),
        Center(
          child: SmoothPageIndicator(
            controller: _controller,
            count: 4,
            axisDirection: Axis.horizontal,
            effect: WormEffect(
              activeDotColor: AppColors.shopbox,
              dotHeight: 10,
              dotWidth: 10,
              dotColor: AppColors.backarrow,
            ),
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ButtonsComponent(
                text: 'New arrivals',
                imagepath: 'assets/images/newarrivals.png',
                width: 115,
              ),
              SizedBox(width: 15),
              ButtonsComponent(
                text: 'Best sellers',
                imagepath: 'assets/images/bestsellers.png',
                width: 115,
              ),
              SizedBox(width: 15),
              ButtonsComponent(
                text: 'Featured',
                imagepath: 'assets/images/featured.png',
                width: 115,
              ),
              SizedBox(width: 15),
              ButtonsComponent(
                text: 'Special',
                imagepath: 'assets/images/heart.png',
                width: 115,
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        FeaturedComponent(
          text: 'Featured',
          imagepath: 'assets/images/featured.png',
          data: '',
          hurryup: AppColors.medicalbook,
          size: 16,
          weight: FontWeight.w700,
          offer: '',
          width: 190,
        ),
        SizedBox(height: 20),
        BlackFridayComponent(),
        SizedBox(height: 20),

        //container for new arrivals
        FeaturedComponent(
          text: 'New Arrivals',
          imagepath: 'assets/images/newarrivals.png',
          data: '',
          offer: '',
          size: 16,
          weight: FontWeight.w700,
          hurryup: AppColors.medicalbook,
          width: 170,
        ),
        SizedBox(height: 20),

        //container for best sellers
        FeaturedComponent(
          text: 'Best Sellers',
          imagepath: 'assets/images/bestsellers.png',
          data: '',
          offer: '',
          size: 16,
          weight: FontWeight.w700,
          hurryup: AppColors.medicalbook,
          width: 170,
        ),
        SizedBox(height: 10),

        ShopCollectionsComponent(),
        
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
