// features/login/presentation/maneger/login/login_cubit.dart


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/services/auth.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  GlobalKey <FormState>formKey=GlobalKey<FormState>();AutovalidateMode autovalidateMode=AutovalidateMode.onUserInteraction;
AuthImpl authImpl=AuthImpl();
void login()async{
  emit(LoginInLoading());
  try{
  await authImpl.loginWhithEmailAndPassword(
    email: emailController.text,
     password: passwordController.text);
     emit(LoginSuccess());
     }
    catch(error){
    emit(LoginFailure(error.toString()));
     }
}

  
}
