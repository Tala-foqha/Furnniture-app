// features/sign up/presentation/maneger/signup/signup_cubit.dart


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/features/sign%20up/presentation/maneger/signup/signup_state.dart';
import 'package:furniture_app/core/services/auth.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
GlobalKey<FormState> formKey=GlobalKey<FormState>();
AutovalidateMode autovalidateMode=AutovalidateMode.onUserInteraction;
AuthImpl authImpl=AuthImpl();
    void signUp()async{
      emit(SignupLoading());
      try{
await authImpl.signUpWithemailAndpassword(
  firstName: firstNameController.text,
  lastName: lastNameController.text,
email: emailController.text,
 password:passwordController.text);
 emit(Signupsuccess());
      }catch(e){
      emit(SignupFailure(e.toString()));
      }
    }


  
}
