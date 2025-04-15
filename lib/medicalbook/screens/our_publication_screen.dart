import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/dt_product_card_component.dart';
import 'package:flutterproject/theme/task_theme.dart';

class OurPublicationScreen extends StatelessWidget {
  const OurPublicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: AppColors.dentbox,
          title: Text(
            'Our Publication',
            style: TextStyle(
              color: AppColors.medicalbook,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/search.png',
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              width: 440,
              decoration: BoxDecoration(
                color: AppColors.dentbox,
                border: Border.all(color: AppColors.issueborder, width: 2),
              ),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      // height: 20,
                      width: 140,
                      decoration: BoxDecoration(
                        color: AppColors.categoriesarrow,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'All(80)',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.dentbox,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 4,
                ),
                itemBuilder: (context, index) {
                  return DTProductCardComponent();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
