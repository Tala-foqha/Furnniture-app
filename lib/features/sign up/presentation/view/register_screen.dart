// features/sign up/presentation/view/register_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/utils/constants.dart';
import 'package:furniture_app/core/widgets/nav_bar.dart';
import 'package:furniture_app/features/login/presentation/views/log_in_screen.dart';
import 'package:furniture_app/features/sign%20up/presentation/maneger/signup/signup_cubit.dart';
import 'package:furniture_app/features/sign%20up/presentation/maneger/signup/signup_state.dart';
import 'package:furniture_app/features/sign%20up/presentation/view/widget/register_screen_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const String routeName = 'reg_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xffF5F5F5),
      body: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          if(state is SignupFailure){
            BuildError(context, state.message);
          }

          else if(state is Signupsuccess){
            Navigator.popAndPushNamed(context, LogInScreen.routeName);
          }

        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is SignupLoading,
            child: SafeArea(child: RegisterScreenBody()));
        
        }
                                                                                  
      ),
    );
  }

}