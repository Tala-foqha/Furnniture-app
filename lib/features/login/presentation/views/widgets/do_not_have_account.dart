// features/login/presentation/views/widgets/do_not_have_account.dart
import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/app_Style.dart';
import 'package:furniture_app/core/utils/app_color.dart';
import 'package:furniture_app/features/sign%20up/presentation/view/register_screen.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don’t have an account? ',
        style: AppStyle.manrope16moregrey,
        textAlign: TextAlign.center,),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
          },
          child: Text(
            'Register ',
          style: AppStyle.manrope16moregrey.copyWith(color: AppColor.Browny,
          ),
          textAlign: TextAlign.center,
          
          ),
        ),
      ],
    );
  }
}