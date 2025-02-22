// features/onBording/presentation/views/widgets/page_view_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/features/onBording/presentation/views/widgets/text_widget.dart';


class PageViewItem extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const PageViewItem({super.key, required this.Text1, required this.Text2, required this.path, required bool visible, });
final String Text1;
final String Text2;
final String path;
 final bool visible=false;


  @override
  Widget build(BuildContext context) {
    return Column(
children: [
  Image .asset(path,height: 500,width:double.infinity,fit:  BoxFit.cover,),
        SizedBox(height: 24.h,),
          TextWidgets(Text1: Text1,style: AppStyle.manrope32black800,),
          TextWidgets(Text1: Text2,style: AppStyle.manrope18grey400,)
          
            ],



    


    );
    
  }
}
