import 'package:equatable/equatable.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/user/user.dart';

class Auth extends Equatable {
  final String type;
  final String message;
  final User user;

  const Auth({
    required this.type,
    required this.message,
    required this.user,
  });

  @override
  List<Object> get props => [
        type,
        message,
        user,
      ];
}
