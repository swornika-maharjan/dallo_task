import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';

class DTProductCardComponent extends StatelessWidget {
  const DTProductCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .456,
      decoration: const BoxDecoration(color: DTColor.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.samikshapublication.com.np/image/cache/catalog/loksewa/Loksewa-easy-entry-for-Phar-500x700.gif',
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Container(
                height: 17,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: DTColor.lightRed,
                ),
                child: Center(
                  child: Text(
                    'SALE',
                    style: header7.copyWith(
                      fontWeight: FontWeight.w600,
                      color: DTColor.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                height: 17,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: DTColor.green,
                ),
                child: Center(
                  child: Text(
                    '50% OFF',
                    style: header7.copyWith(
                      fontWeight: FontWeight.w600,
                      color: DTColor.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            'Medical Textbook',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: header5.copyWith(
              fontWeight: FontWeight.w600,
              color: DTColor.academyBlue,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Nrs. 1500.00',
                style: header6.copyWith(
                  fontWeight: FontWeight.w700,
                  color: DTColor.blueDark,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                'Nrs. 2,720.00',
                style: header8.copyWith(
                  color: DTColor.assetGrey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
