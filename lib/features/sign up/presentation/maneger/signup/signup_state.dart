// features/sign up/presentation/maneger/signup/signup_state.dart

abstract class SignupState {}

class SignupInitial extends SignupState {}
class SignupLoading extends SignupState {}
class Signupsuccess extends SignupState {}
class SignupFailure extends SignupState {
  final String message;
  SignupFailure(this.message);

}



