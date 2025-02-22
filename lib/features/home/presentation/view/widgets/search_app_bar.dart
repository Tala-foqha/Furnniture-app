// features/home/presentation/view/widgets/search_app_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/features/home/presentation/view/widgets/search_home_app_bar.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: SearchBox()),
         SizedBox(width: 8,)  ,
    SvgPicture.asset('assets/Svg/Vector (6).svg',height: 15.h,width:15.w ,)
              ],
    );
  }
}