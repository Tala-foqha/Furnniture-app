// core/widgets/nav_bar.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/controller/controller_navbar.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/utils/app_color.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/account_screen.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/cart_screen.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/home_screen_body.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class NavBar extends StatelessWidget {
   NavBar({super.key});
static const routeName='nave';
final ControllerNavbar controllerNavbar=Get.put(ControllerNavbar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: PageView(
       // onPageChanged: controllerNavbar,
        controller: controllerNavbar.pageController,
        physics: BouncingScrollPhysics(),
        children: [
            HomeScreenBody(),
            CartScreen(),
            AccountScreen(),
        ],
      

      ),
bottomNavigationBar: Container(
  width: double.infinity,
  height: 68.h,
  // notchMargin: 10,
  // elevation: 0,
  //  decoration: BoxDecoration(
  //     color: Color(0xffFFFFFF),
  //    borderRadius: BorderRadius.only(topLeft:Radius.circular(14.r) ,
  //    topRight: Radius.circular(14.r) )
  //   ),
  child: Container(
    decoration: BoxDecoration(
     boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(3, 3)
      )
     ], 
      color: Color(0xffFFFFFF),
     borderRadius: BorderRadius.only(topLeft:Radius.circular(14.r) ,
     topRight: Radius.circular(14.r) )
    ),
    

    child: Obx(
      ()=> Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomAppBarItem(context, path:'assets/Svg/home-icon.svg', lable: 'home', page: 0),
            _bottomAppBarItem(context, path: 'assets/Svg/cart-icon.svg', lable: ' My Cart', page: 1),
      _bottomAppBarItem(context, path: 'assets/Svg/users.svg', lable: 'My Account', page: 2)
        ],
      ),
    ),
  ),

),
    );
  }


Widget _bottomAppBarItem(BuildContext context,{required String path ,required lable,required page}){
  return ZoomTapAnimation(
    onTap: ()=> controllerNavbar.goToTap(page),
  
    child: Column(
      mainAxisSize: MainAxisSize.min,
    children: [
    SvgPicture.asset(path,color: controllerNavbar.currentPage.value==page?AppColor.Browny:AppColor.lgrey,),
    SizedBox(height: 3,),
    
    Text(lable,style: AppStyle.manrope14mordarkegrey.copyWith(color:controllerNavbar.currentPage.value==page?AppColor.Browny:AppColor.lgrey) )
    ],
    ),
  );

}}