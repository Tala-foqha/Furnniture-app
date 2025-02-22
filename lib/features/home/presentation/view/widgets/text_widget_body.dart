// features/home/presentation/view/widgets/text_widget_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';

class TextWidgetBody extends StatelessWidget {
  const TextWidgetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Text('Special Offers',style: AppStyle.manrope24blackbold,),
          Spacer(),
          Text('See More',style: AppStyle.manrope14greenbold.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: Color(0xff156651),
            decorationThickness: 2
          ),
          )
        ],
      ),
    );
  }
}