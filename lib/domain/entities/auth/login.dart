import 'package:equatable/equatable.dart';
import 'package:odc_hackathon_lavie_app/data/models/auth/data_model.dart';

class Login extends Equatable {
  final String? type;
  final String? message;
  final DataModel? data;

  const Login({
    required this.type,
    required this.message,
    required this.data,
  });

  @override
  List<Object?> get props => [
        type,
        message,
        data,
      ];
}


