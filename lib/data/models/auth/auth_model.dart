import 'package:odc_hackathon_lavie_app/domain/entities/auth/auth.dart';

class AuthModel extends Auth {
  const AuthModel({
    required super.type,
    required super.message,
    required super.user,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        type: json['type'],
        message: json['message'],
        user: json['data'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    data['data'] = user;
    return data;
  }
}
