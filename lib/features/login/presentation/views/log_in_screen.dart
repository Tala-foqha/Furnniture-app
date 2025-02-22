// features/login/presentation/views/log_in_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/utils/constants.dart';
import 'package:furniture_app/core/widgets/nav_bar.dart';
import 'package:furniture_app/features/home/presentation/view/home_screen.dart';
import 'package:furniture_app/features/login/presentation/maneger/login/login_cubit.dart';
import 'package:furniture_app/features/login/presentation/views/widgets/log_in_screen_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String routeName = 'log_in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: BlocConsumer<LoginCubit,LoginState>(
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginInLoading,
          child: LogInScreenBody());
      },
        listener: (context, state) {
        if  (state is LoginFailure){
          BuildError(context, state.message);
        }else if(state is LoginSuccess){
         Navigator.pushReplacementNamed(context, NavBar.routeName);
        }
        },
      ),
    );
  }
}
