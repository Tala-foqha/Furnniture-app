// features/login/presentation/views/widgets/or_widgit.dart
import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/app_Style.dart';

class OrWidgit extends StatelessWidget {
  const OrWidgit({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      Expanded(
        child: Divider(
          thickness: 1,
          color:Color(0xffC2C2C2) ,
        ),
      
      ),
        SizedBox(width: 7,),
        Text('OR',style: AppStyle.manrope12RegulardimGray,),
        
        SizedBox(width: 7,),
        Expanded(
        child: Divider(
          thickness: 1,
          color:Color(0xffC2C2C2) ,
        ),
      
      ),
    ],);
  }
}