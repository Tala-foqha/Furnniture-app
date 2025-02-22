// features/home/presentation/view/widgets/location_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/utils/app_Style.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          SvgPicture.asset('assets/Svg/Location.svg'),
          SizedBox(width: 8.w,),
          Text('Deliver to',style:AppStyle.manrope14mordarkegrey.copyWith(color: Color(0xff404040)) ,),
          SizedBox(width: 8.w,),
          Text('3517 W. Gray St. Utica, Pennsylvania...',style: AppStyle.manrope14mordarkegrey.copyWith(fontWeight: FontWeight.w700),),
            Spacer(),
             SvgPicture.asset('assets/Svg/down-icon.svg')
          
          
          
        ],
      ),
    );

  }
}