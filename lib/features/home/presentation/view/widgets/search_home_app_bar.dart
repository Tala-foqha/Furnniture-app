// features/home/presentation/view/widgets/search_home_app_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SearchBox extends StatelessWidget {


  SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      // onChanged: onChanged,
      decoration: InputDecoration(
        
        hintText: "Search candles",
        suffixIcon: SvgPicture.asset('assets/Svg/Union.svg',width: 12.w,height: 12.h,fit: BoxFit.scaleDown,),
        prefixIcon: Icon(Iconsax.search_normal_1,), 
        filled: true,
        fillColor: Colors.white, 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.white),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
      ),
    );
  }
}