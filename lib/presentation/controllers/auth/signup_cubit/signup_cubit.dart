import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/network/error/dio_exception.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/api_constance.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/dio_helper.dart';
import 'package:odc_hackathon_lavie_app/data/models/auth/signup_model.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  SignUpModel? signUpModel;

  String? firstNameValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'required!';
    }
    return null;
  }

  String? lastNameValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'required!!';
    }
    return null;
  }

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
    if (value != confirmPasswordController.text) {
      return 'Passwords do not match.';
    }
    return null;
  }

  String? confirmatioPasswordsValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password must not be empty!';
    }
    if (value.toString().length < 8) {
      return 'Password must be at least 8 characters!';
    } else if (value != passwordController.text) {
      return 'Passwords do not match.';
    }
    return null;
  }

  String errorMessage = '';

  void onSubmit() async {
    if (formKey.currentState!.validate()) {
      try {
        emit(SignupLoadingState());
        final response =
            await DioHelper.postData(url: ApiConstance.signupUrl, data: {
          "firstName": firstNameController.text,
          "lastName": lastNameController.text,
          "email": emailController.text,
          "password": passwordController.text,
        }).then((value) {
          signUpModel = SignUpModel.fromJson(value.data);
          emit(SignupSuccessState(signUpModel!));
        });
      } on DioError catch (e) {
        errorMessage = DioExceptions.fromDioError(e).toString();
        emit(SignupFailedState(errorMessage));

        throw errorMessage;
      } catch (e) {
        errorMessage = e.toString();
        emit(SignupFailedState(errorMessage));
        throw errorMessage;
      }
    }
  }
}
