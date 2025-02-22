// features/login/presentation/views/widgets/log_in_screen_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/utils/app_color.dart';
import 'package:furniture_app/core/widgets/custtom_button_widget.dart';
import 'package:furniture_app/features/login/presentation/maneger/login/login_cubit.dart';
import 'package:furniture_app/features/login/presentation/views/widgets/do_not_have_account.dart';
import 'package:furniture_app/features/login/presentation/views/widgets/form_field_log_in.dart';
import 'package:furniture_app/features/login/presentation/views/widgets/or_widgit.dart';

class LogInScreenBody extends StatelessWidget {
  const LogInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24,right: 16,left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back!',style: AppStyle.manrope32black800.copyWith(color: Color(0xff404040)),),
            SizedBox(height: 8.h,),
            Text('Enter your email to start shopping and get\n awesome deals today!'
            ,style:AppStyle.manrope16moregrey ,),
            SizedBox(height: 32.h,),
           FormFieldLogIn(),
                    SizedBox(height: 16.h,),
           Text('Forgot your password?',style: AppStyle.manrope16moregrey.copyWith(color: AppColor.Browny),),
         SizedBox(height: 24.h,),
         CusttomButtonWidget(text:' Log in', width: double.infinity, onPressed: (){
           if(context.read<LoginCubit>().formKey.currentState!.validate()){
              context.read<LoginCubit>().formKey.currentState!.save();
              context.read<LoginCubit>().login();

            }else{
              context.read<LoginCubit>().autovalidateMode=AutovalidateMode.always;
            }
         }),
     SizedBox(height: 39.h,),
        OrWidgit(),
        SizedBox(height: 39.h,),
        DoNotHaveAccount(),


          ],
        ),
      ),
    );
  }
}

