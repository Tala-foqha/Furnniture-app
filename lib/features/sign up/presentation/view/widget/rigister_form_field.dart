// features/sign up/presentation/view/widget/rigister_form_field.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/utils/constants.dart';
import 'package:furniture_app/features/login/presentation/views/widgets/text_form_field_log_in.dart';
import 'package:furniture_app/features/sign%20up/presentation/maneger/signup/signup_cubit.dart';

class RigisterFormField extends StatefulWidget {
  const RigisterFormField({super.key});

  @override
  State<RigisterFormField> createState() => _RigisterFormFieldState();
}

class _RigisterFormFieldState extends State<RigisterFormField> {
  bool isObscurte=true;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode:context.read<SignupCubit>().autovalidateMode ,
      key: context.read<SignupCubit>().formKey,
      child: 
    Column(
      children: [
         TextFormFieldLogIn(
            validator: (value){
          if(value==null||value.isEmpty){
            return 'please enter your First Name';

        

          }
          return null;
        },
          controller: context.read<SignupCubit>().firstNameController,
          
          hintText:'First Name',
       prefixIcon: Padding(

        
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SvgPicture.asset('assets/Svg/user.svg',fit: BoxFit.scaleDown,)), 
        conntentpadding: EdgeInsets.symmetric(vertical: 14.h), 
        suffixIcon: false,
      ),
      SizedBox(height: 16.h,),
       TextFormFieldLogIn(
       validator: (value){
             if(value==null||value.isEmpty){
            return 'please enter your Last Name';
        }
        },
        controller: context.read<SignupCubit>().lastNameController,
        hintText:'Last Name',
       prefixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SvgPicture.asset('assets/Svg/user.svg',fit: BoxFit.scaleDown,)), 
        conntentpadding: EdgeInsets.symmetric(vertical: 14.h), 
        suffixIcon: false,
      ),
      SizedBox(height: 16.h,),
      TextFormFieldLogIn(
        validator: (value){
             if(value==null||value.isEmpty){
            return 'please enter your Email';
        }  else if(!emailValid(value)){
            return'please enter a vaalid email';
        }},
        
        controller: context.read<SignupCubit>().emailController,
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
            return 'please enter your Password';
        }
        },
        controller: context.read<SignupCubit>().passwordController,
        hintText:'Password',
       prefixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SvgPicture.asset('assets/Svg/lock-icon.svg',fit: BoxFit.scaleDown,)), 
        conntentpadding: EdgeInsets.symmetric(vertical: 14.h), 
        suffixIcon: true,
        obscureText: isObscurte,
        onTap:(){
          setState(() {
            isObscurte=!isObscurte;
          });
        } ,
      ),



      ],
    )
    );
  }
}