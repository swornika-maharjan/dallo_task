import 'package:flutter/material.dart';
import 'package:flutterproject/theme/task_theme.dart';

class FeaturedComponent extends StatelessWidget {
  const FeaturedComponent({
    super.key,
    required this.text,
    required this.imagepath,
    required this.data,
    this.color,
    this.hurryup,
    this.size,
    this.weight,
    required this.offer,
    this.color3,
    this.width,
  });
  final String text;
  final String imagepath;
  final String data;
  final Color? color;
  final Color? hurryup;
  final double? size;
  final FontWeight? weight;
  final String offer;
  final Color? color3;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 400,
      decoration: BoxDecoration(color: AppColors.dentbox),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 15),
              Text(
                text,
                style: TextStyle(
                  color: hurryup,
                  fontSize: size,
                  fontWeight: weight,
                ),
              ),
              // SizedBox(width: 5),
              Text(offer, style: TextStyle(color: color, fontSize: size)),
              SizedBox(width: 5),
              Image.asset(imagepath, height: 90, width: 16),

              SizedBox(width: 5),
              Text(data, style: TextStyle(color: color3, fontSize: size)),
              SizedBox(width: width),
              Text(
                'View all',
                style: TextStyle(color: AppColors.viewall, fontSize: 12),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16,
                color: AppColors.viewall,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  height: 300,
                  width: 165,
                  decoration: BoxDecoration(
                    color: AppColors.dentbox,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/loksewa.png',
                        height: 193,
                        width: 149,
                        fit: BoxFit.cover,
                      ),
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
                      Text(
                        'Loksewa Aayog Pharma idol for Pharmacy Officers',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.featuredescrip,
                        ),
                      ),
                      SizedBox(height: 8),
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
    );
  }
}
