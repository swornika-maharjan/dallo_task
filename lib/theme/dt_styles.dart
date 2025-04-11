import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterproject/theme/dt_color.dart';

final mainHeaderTitle = TextStyle(
  fontSize: 24.sp,
  height: (36.sp / 24.sp),
  color: DTColor.white,
  fontWeight: FontWeight.w700,
  fontFamily: 'Manrope',
);

final headerTitle = TextStyle(
  fontSize: 18.sp,
  height: (27.sp / 18.sp),
  color: DTColor.white,
  fontWeight: FontWeight.w600,
  fontFamily: 'Manrope',
);

final header1 = TextStyle(
  fontSize: 24.sp,
  height: (44.sp / 24.sp),
  color: DTColor.primaryTextColor,
  fontWeight: FontWeight.bold,
  fontFamily: 'Manrope',
);

final header2 = TextStyle(
  fontSize: 20.sp,
  height: (28.sp / 20.sp),
  color: DTColor.primaryTextColor,
  fontWeight: FontWeight.w700,
  fontFamily: 'Manrope',
);

final header3 = TextStyle(
  fontSize: 18.sp,
  height: (27.sp / 18.sp),
  color: DTColor.primaryTextColor,
  fontWeight: FontWeight.w600,
  fontFamily: 'Manrope',
);

final header4 = TextStyle(
  fontSize: 16.sp,
  height: (24.sp / 16.sp),
  color: DTColor.primaryTextColor,
  fontWeight: FontWeight.w600,
  fontFamily: 'Manrope',
);

final header5 = TextStyle(
  fontSize: 14.sp,
  height: (21.sp / 14.sp),
  color: DTColor.primaryTextColor,
  fontWeight: FontWeight.w500,
  fontFamily: 'Manrope',
);
final header2secBold = header2.copyWith(
  color: DTColor.secondaryTextColor,
  fontWeight: FontWeight.bold,
);
final header4sec = header4.copyWith(color: DTColor.secondaryTextColor);
final header5sec = header5.copyWith(color: DTColor.secondaryTextColor);
final header5secBold = header5.copyWith(
  color: DTColor.secondaryTextColor,
  fontWeight: FontWeight.w700,
);

final header6 = TextStyle(
  fontSize: 13.sp,
  height: (19.sp / 13.sp),
  color: DTColor.primaryTextColor,
  fontWeight: FontWeight.w500,
  fontFamily: 'Manrope',
);

final header6sec = header6.copyWith(color: DTColor.secondaryTextColor);
final header6secBold = header6.copyWith(
  color: DTColor.secondaryTextColor,
  fontWeight: FontWeight.w700,
);

final hintStyleHeader = header5.copyWith(
  color: DTColor.assetGrey,
  fontWeight: FontWeight.w400,
);

final header7 = TextStyle(
  fontSize: 12.sp,
  height: (18.sp / 12.sp),
  color: DTColor.primaryTextColor,
  fontWeight: FontWeight.w500,
  fontFamily: 'Manrope',
);

final header8 = TextStyle(
  fontSize: 11.sp,
  height: (17.sp / 11.sp),
  color: DTColor.primaryTextColor,
  fontWeight: FontWeight.w500,
  fontFamily: 'Manrope',
);

final header7sec = header6.copyWith(color: DTColor.secondaryTextColor);
