import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/authentication/forget_password/forget_password_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/authentication/login/login_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/authentication/register/register_view.dart';

class AuthCubit extends Cubit<Widget> {
  AuthCubit() : super(const LoginView());

  int index = 0;

  void loginScreen() {
    index = 0;
    emit(const LoginView());
  }

  void signupScreen() {
    index = 1;
    emit(const RegisterView());
  }

  void forgetPasswordScreen() {
    index = 2;
    emit(const ForgetPasswordView());
  }
}
