// core/widgets/custtom_button_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/utils/app_color.dart';

class CusttomButtonWidget extends StatelessWidget {
  const CusttomButtonWidget({super.key, required this.text, required this.width, this.color, this.textcolor, required this.onPressed, this.borderraduis, this.hight});
final String text;
final double width;
final double ?hight;
final Color? color;
final Color ?textcolor;
final  onPressed;
final BorderRadius? borderraduis;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 20),
     // child:
      return TextButton(
        style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color??AppColor.Browny),
          minimumSize: WidgetStateProperty.all(
            Size(width, hight??43.h),
        ),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius:borderraduis?? BorderRadius.circular(8)))
        ),
        
        onPressed:onPressed, 
      child:Text(text,style: AppStyle.manrope16whitebold.copyWith(color: textcolor??Colors.white),)
     // ),
    );
  }}