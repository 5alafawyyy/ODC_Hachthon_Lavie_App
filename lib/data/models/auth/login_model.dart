import 'package:odc_hackathon_lavie_app/data/models/auth/data_model.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/auth/login.dart';

class LoginModel extends Login {
  const LoginModel({
    required super.type,
    required super.message,
    required super.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        type: json['type'],
        message: json['message'],
        data: json['data'] != null ?  DataModel.fromJson(json['data']) : null,
      );

  // {
 

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }

}

