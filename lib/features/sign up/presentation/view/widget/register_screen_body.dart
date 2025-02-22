// features/sign up/presentation/view/widget/register_screen_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/widgets/custtom_button_widget.dart';
import 'package:furniture_app/features/sign%20up/presentation/maneger/signup/signup_cubit.dart';
import 'package:furniture_app/features/sign%20up/presentation/view/widget/rigister_form_field.dart';
import 'package:furniture_app/features/sign%20up/presentation/view/widget/terms_of_us.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
          padding: const EdgeInsets.only(top: 24,right: 16,left: 16),
        child: SingleChildScrollView(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create Account',style: AppStyle.manrope32black800,),
            SizedBox(height: 8.h,),
            Text('Fill in your details below to get started on a\n seamless shopping experience.',
            style: AppStyle.manrope16moregrey,),
            SizedBox(height: 30.h,),
           RigisterFormField(),
           SizedBox(height: 24,),
           TermsOfUs(),
           SizedBox(height: 29,),
           CusttomButtonWidget(text: 'Create Account', width:double.infinity, onPressed: (){
            if(context.read<SignupCubit>().formKey.currentState!.validate()){
              context.read<SignupCubit>().formKey.currentState!.save();
              context.read<SignupCubit>().signUp();

            }else{
              context.read<SignupCubit>().autovalidateMode=AutovalidateMode.always;
            }
           })
          
          ],
          ),
        ),
      ),
    );
  }
}