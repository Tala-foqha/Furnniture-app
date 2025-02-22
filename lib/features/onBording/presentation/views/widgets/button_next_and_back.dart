// features/onBording/presentation/views/widgets/button_next_and_back.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_color.dart';

import 'package:furniture_app/core/widgets/custtom_button_widget.dart';
import 'package:furniture_app/features/login/presentation/views/log_in_screen.dart';


class ButtonNextAndBack extends StatelessWidget {
 ButtonNextAndBack({super.key, required this.currentPage,required this.pageController});
final int currentPage;
late PageController pageController;

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: currentPage==0?CusttomButtonWidget(text: 'Next', width: double.infinity,
      onPressed: (){
        pageController.nextPage(duration: Duration(milliseconds: 300),
         curve: Curves.easeIn);
      },):Row(children: [
        CusttomButtonWidget(text: 'Back', width: 120,
        color: Colors.white,
        textcolor: AppColor.Browny,
         onPressed:(){
          pageController.previousPage(duration: Duration(milliseconds: 30), curve: Curves.easeIn);
          
         }
      
         ),
         const SizedBox(width: 16,),
         CusttomButtonWidget(
          onPressed:(){pageController.nextPage(duration: Duration(milliseconds: 300),
         curve: Curves.easeIn);
         if(currentPage ==2){
      Navigator.pushReplacementNamed(context, LogInScreen.routeName);
         }
          }
         , text: 'Next', width: 220
      
        
         
         ,)
      
      ],),
    );
    }}