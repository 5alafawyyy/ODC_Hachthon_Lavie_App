part of 'signup_cubit.dart';

abstract class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupState {}

class SignupLoadingState extends SignupState {}

class SignupSuccessState extends SignupState {
    final SignUpModel signUpModel;

  const SignupSuccessState(this.signUpModel);

}

class SignupFailedState extends SignupState {
  final String message;
  const SignupFailedState(this.message);
}
