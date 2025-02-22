// features/home/presentation/view/widgets/stack_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';

class StackItem extends StatelessWidget {
  const StackItem({
    super.key, required this.path,
  });
  final String path;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
       Image.asset(path,
       height: 120.h,width: 120.h,),
    Positioned(
      bottom: 0,
      child: Container(
        padding: EdgeInsets.only(top: 3),
         height: 20.h,
         width: 51.w,
        decoration: BoxDecoration(
          color: Color(0xffE44A4A),
      
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r),
          bottomRight:Radius.circular(10.r) )
      
        ),
        child: Text('45% OFF',style: AppStyle.manrope10whiteSemiBold,textAlign: TextAlign.center,),
      ),
    )
            ],
    );
  }
}