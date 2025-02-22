// features/home/presentation/view/widgets/page_view_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/widgets/custtom_button_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/image 16 (1).png',fit: BoxFit.cover,),
      
     
      
    //  right: ,
      //width: ,
          Container(
            width: double.infinity,
            height: 220,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                       Color(0xff156651).withOpacity(1),
          Color(0xff156651).withOpacity(.7),
          Color(0xff156651).withOpacity(0.0),
                ],
                stops: [0.0,0.4,.9]
              ),
            ),
            
          
        ),
        
        Positioned(
          top: 31,
          left: 20,
          child: Text('Celebrate The\nSeason With Us!',style:AppStyle.manrope21whitebold.copyWith(color:Colors.white) ,)),
          SizedBox(height: 8.h,),
       Positioned(
          top: 89,
          left: 20,
          child: Text('Get discounts up to 75% for\nfurniture &  decoration',style:AppStyle.manrope12RegulardimGray.copyWith(color:Colors.white) ,)),
          
     Positioned(
            top: 139.h,
            left: 20.w,
           child: CusttomButtonWidget(text: 'Shop Now',
            width: 95,
            hight: 30,
             onPressed: (){},
             textcolor: Color(0xff156651),
           borderraduis: BorderRadius.circular(42),
           color:Color(0xffFFFFFF),
           ),)
      ],

    );
  }
}