// core/utils/app_Style.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_color.dart';
import 'package:furniture_app/core/utils/font_weight_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle{
  static TextStyle manrope32black800=GoogleFonts.manrope
(
  fontSize: 32,
  fontWeight: FontWeight.w800,
  color: Color(0xff404040)
);


static TextStyle manrope24blackbold=GoogleFonts.manrope
(
  fontSize: 24,
  fontWeight: FontWieghtHelper.bold,
  color: Color(0xff404040)
);

 static TextStyle manrope20darkgreyBold=GoogleFonts.manrope
(
  fontSize: 20,
  fontWeight:FontWieghtHelper.bold,
  color: Color(0xff404040)
);
  static TextStyle manrope18grey400=GoogleFonts.manrope
(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: AppColor.wgrey
);

 static TextStyle manrope16whitebold=GoogleFonts.manrope
(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  color: AppColor.white
);

 static TextStyle manrope16moregrey=GoogleFonts.manrope
(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColor.wgrey
);
static TextStyle manrope14mordarkegrey=GoogleFonts.manrope
(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: AppColor.darkgrey
);
static TextStyle manrope14greenbold=GoogleFonts.manrope
(
  fontSize: 14,
  fontWeight: FontWieghtHelper.bold,
  color: Color(0xff156651)
);
static TextStyle manrope21whitebold=GoogleFonts.manrope
(
  fontSize: 21,
  fontWeight: FontWieghtHelper.bold,
  color: Color(0xFFFFFF)
);



// static TextStyle manrope14mordarkegrey=GoogleFonts.manrope
// (
//   fontSize: 14,
//   fontWeight: FontWeight.w400,
//   color: AppColor.darkgrey
// );
static   TextStyle manrope12RegulardimGray=GoogleFonts.manrope(
    color: AppColor.dimGray,
    fontWeight: FontWieghtHelper.regular,
    fontSize: 12.sp);
  

  static   TextStyle manrope10whiteSemiBold=GoogleFonts.manrope(
    color:Color(0xffFFFFFF) ,
    fontWeight: FontWieghtHelper.semiBold,
    fontSize: 10.sp);
  
  
}