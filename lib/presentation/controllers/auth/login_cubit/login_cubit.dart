import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/network/error/dio_exception.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/api_constance.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/dio_helper.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/google_sign_in.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/network_info.dart';
import 'package:odc_hackathon_lavie_app/data/models/auth/login_model.dart';
import 'package:odc_hackathon_lavie_app/domain/usecases/get_auth_usecase.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final GetAuthDataUseCase getAuthDataUseCase;
  final BaseNetworkInfo networkInfo;

  LoginCubit(this.getAuthDataUseCase, this.networkInfo) : super(LoginInitial());

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginModel? loginModel;

  String? emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email Address must not be empty!';
    }
    return null;
  }

  String? passValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password must not be empty!';
    }
    if (value.toString().length < 8) {
      return 'Password must be at least 8 characters!';
    }
    return null;
  }

  String errorMessage = '';

  void onSubmit() async {
    if (formKey.currentState!.validate()) {
      try {
        emit(LoginLoadingState());
        final response =
            await DioHelper.postData(url: ApiConstance.signinUrl, data: {
          "email": emailController.text,
          "password": passwordController.text,
        }).then((value) {
          loginModel = LoginModel.fromJson(value.data);
          emit(LoginSuccessState(loginModel!));
        });
      } on DioError catch (e) {
        errorMessage = DioExceptions.fromDioError(e).toString();
        emit(LoginFailedState(errorMessage));

        throw errorMessage;
      } catch (e) {
        errorMessage = e.toString();
        emit(LoginFailedState(errorMessage));

        throw errorMessage;
      }
    }
  }

  void googleSignIn() async {
    try {
      emit(LoginLoadingState());

      await GoogleSignInApi.login().then((value) {
        print(value);
      });
    } catch (e) {
      errorMessage = e.toString();
      emit(LoginFailedState(errorMessage));

      throw errorMessage;
    }
  }
}

void googleLogOut() async {
  await GoogleSignInApi.signOut();
}
