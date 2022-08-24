import 'package:odc_hackathon_lavie_app/domain/entities/user/user.dart';

class UserModel extends User {
  const UserModel({
    required super.userId,
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.imageUrl,
    required super.address,

    required super.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json['userId'],
        email: json['email'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        imageUrl: json['imageUrl'],
        address: json['address'],

        role: json['role'],
      );
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['email'] = email;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['imageUrl'] = imageUrl;
    data['address'] = address;

    data['role'] = role;

    return data;
  }
}
