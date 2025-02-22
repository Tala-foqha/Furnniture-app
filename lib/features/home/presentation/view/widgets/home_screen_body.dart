// features/home/presentation/view/widgets/home_screen_body.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/utils/app_color.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/list_view_items.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/list_viwe_item.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/location_widget.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/page_view_item.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/search_app_bar.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/text_widget_body.dart';
import 'package:furniture_app/model/product_item_model.dart';





class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
 
 int currentindex=0;
  Widget Builddot(int index){
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
margin: EdgeInsets.symmetric(horizontal: 4.w),
width: 8.w,
height: 8.h,
decoration: BoxDecoration(
  color: currentindex==index?Color(0xff156651):AppColor.maybywhite,
  borderRadius: BorderRadius.circular(4.r)
),
);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
             child: SearchAppBar(),
           ),
           SizedBox(height: 24.h,),
           Column(
            children: [
              LocationWidget(),
              SizedBox(height: 24.h,),
           
CarouselSlider(
  options: CarouselOptions(
    onPageChanged: (index,reason){
      setState(() {
        currentindex=index;
      });
    },
    height: 220.h,
    autoPlay: true,
    viewportFraction: 1,
    autoPlayInterval: Duration(seconds: 3)
  ),
  items: List.generate(3, (index){
    return PageViewItem();
  })
),
SizedBox(height: 16,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:List.generate(3,(index){
return Builddot(index);
  })
)],),
SizedBox(height: 24,),
TextWidgetBody(),


SizedBox(height: 16,),

ListViewItems()
          ],

       
        )
      )
    );
  }}

