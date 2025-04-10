import 'package:flutter/material.dart';
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
            Container(
              width: 400,
              // height: 800,
              color: AppColors.dentbox,
              child: GridView.builder(
                itemCount: 6,
                padding: EdgeInsets.all(8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.53,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.dentbox,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/loksewa.png',
                          height: 193,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.salebutton,
                              ),
                              child: Center(
                                child: Text(
                                  'SALE',
                                  style: TextStyle(
                                    color: AppColors.dentbox,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.offer,
                              ),
                              child: Center(
                                child: Text(
                                  '8% off',
                                  style: TextStyle(
                                    color: AppColors.dentbox,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            'Loksewa Aayog Pharma idol for Pharmacy Officers',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.featuredescrip,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              'Nrs. 1500.00',
                              style: TextStyle(
                                color: AppColors.price,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Nrs. 2,720.00',
                              style: TextStyle(
                                color: AppColors.beginner,
                                fontSize: 11,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1.2,
                                decorationColor: AppColors.beginner,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
