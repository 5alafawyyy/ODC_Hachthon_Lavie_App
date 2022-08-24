part of 'qr_code_cubit.dart';

abstract class QrCodeState extends Equatable {
  const QrCodeState();

  @override
  List<Object> get props => [];
}

class QrCodeInitialState extends QrCodeState {}

class QrCodeLoadingState extends QrCodeState {}

class QrCodeSuccessState extends QrCodeState {}

class QrCodeFailureState extends QrCodeState {
  final String message;
  const QrCodeFailureState(this.message);
}
