// features/login/presentation/views/widgets/text_form_field_log_in.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/utils/app_color.dart';

class TextFormFieldLogIn extends StatelessWidget {
  const TextFormFieldLogIn({super.key, required this.hintText, required this.prefixIcon,   this.obscureText=false, this.onTap, this.suffixIcon=false, required this.conntentpadding, this.controller, this.validator, this.borderRadius, 
   });
final String hintText;
  final Widget prefixIcon;
final   bool suffixIcon;
  final bool obscureText;
  final Function()? onTap;
  final EdgeInsetsGeometry conntentpadding;
  final TextEditingController? controller;
  final BorderRadius? borderRadius;

  //final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      validator:validator ,
      
      // validator: validator,
      // controller: controller,
       obscureText: obscureText??false,
       obscuringCharacter: '*',
      cursorColor: AppColor.Browny,
      // style: AppStyles.montserrat12Medium.copyWith(
      //   fontSize: 13.sp,
      //   color: Colors.black,
      //),
      decoration: InputDecoration(
        
        suffixIcon:suffixIcon?
        GestureDetector(
          onTap: onTap,
          child: Icon(obscureText?Icons.visibility_off:Icons.visibility)):null
        ,
        filled: true,
        fillColor: const Color(0xffF3F3F3),
        
        contentPadding: conntentpadding,
        hintText: hintText,
        hintStyle:AppStyle.manrope12RegulardimGray,
        prefixIcon: prefixIcon,
        
       
         
        
        
              
           
        border: buildOutLineInputBorder(),
        enabledBorder: buildOutLineInputBorder(),
        focusedBorder: buildOutLineInputBorder(),
        errorBorder: buildOutLineInputBorder(color: Colors.red),
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBorder({Color? color,BorderRadius? borderRadius}) {
  return OutlineInputBorder(
    borderRadius:  borderRadius??   BorderRadius.circular(10.r),
   
    borderSide: BorderSide(
      color: color ?? const Color(0xffA8A8A9),
    ),
  );
}