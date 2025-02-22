// features/login/presentation/views/widgets/form_field_log_in.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/utils/constants.dart';
import 'package:furniture_app/features/login/presentation/maneger/login/login_cubit.dart';
import 'package:furniture_app/features/login/presentation/views/widgets/text_form_field_log_in.dart';

class FormFieldLogIn extends StatefulWidget {
  const FormFieldLogIn({super.key});

  @override
  State<FormFieldLogIn> createState() => _FormFieldLogInState();
}

class _FormFieldLogInState extends State<FormFieldLogIn> {
  bool isObscurte=true;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode:context.read<LoginCubit>().autovalidateMode ,
      key: context.read<LoginCubit>().formKey,
    child:   Column(children: [
      TextFormFieldLogIn(
        validator: (value){
          if(value==null||value.isEmpty){
            return 'please enter your email';
          }else if(!emailValid(value)){
            return'please enter a vaalid email';

          }return null;
        },
        controller: context.read<LoginCubit>().emailController,
        hintText:'Email',
       prefixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SvgPicture.asset('assets/Svg/mail-icon.svg',fit: BoxFit.scaleDown,)), 
        conntentpadding: EdgeInsets.symmetric(vertical: 14.h), 
        suffixIcon: false,
        

      ),
      SizedBox(height: 16.h,),

    
      TextFormFieldLogIn(
         validator: (value){
          if(value==null||value.isEmpty){
            return 'please enter your email';}return null;},
        
        controller: context.read<LoginCubit>().passwordController,
        hintText:'Password',
       prefixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SvgPicture.asset('assets/Svg/lock-icon.svg',fit: BoxFit.scaleDown,)), 
        conntentpadding: EdgeInsets.symmetric(vertical: 14.h), 
        obscureText: isObscurte,
        suffixIcon: true,
        onTap:(){
          setState(() {
            isObscurte=!isObscurte;
          });
        } ,
        

      ),

    ]
    ,)
      
      );
    
    
  }
}