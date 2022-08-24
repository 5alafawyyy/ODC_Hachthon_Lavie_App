import 'package:odc_hackathon_lavie_app/data/models/user/user_model.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/auth/data.dart';

class DataModel extends Data {
  const DataModel({
    required super.user,
    required super.accessToken,
    required super.refreshToken,
  });

 factory DataModel.fromJson(Map<String, dynamic> json) =>DataModel(
  user: json['user'] != null ? UserModel.fromJson(json['user']) : null,
   accessToken: json['accessToken'],
    refreshToken: json['refreshToken'],
    );
    

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['accessToken'] = accessToken;
    data['refreshToken'] = refreshToken;
    return data;
  }
}
