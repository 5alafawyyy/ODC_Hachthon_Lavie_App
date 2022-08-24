part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final LoginModel loginModel;

  const LoginSuccessState(this.loginModel);
}

class LoginFailedState extends LoginState {
  final String message;
  const LoginFailedState(this.message);
}
