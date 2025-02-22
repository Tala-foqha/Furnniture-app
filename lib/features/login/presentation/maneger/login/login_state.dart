// features/login/presentation/maneger/login/login_state.dart
part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginSuccess extends LoginState {}
class LoginInLoading extends LoginState {}
class LoginFailure extends LoginState {
  final String message;

  LoginFailure(this.message);

}


