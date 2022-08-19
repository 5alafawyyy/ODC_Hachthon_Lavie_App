import 'package:odc_hackathon_lavie_app/domain/entities/user/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.imageUrl,
    required super.address,
    required super.userPoints,
    required super.userNotification,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['userId'],
        email: json['email'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        imageUrl: json['imageUrl'],
        address: json['address'],
        userPoints: json['UserPoints'],
        userNotification: json['UserNotification'],
      );
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = id;
    data['email'] = email;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['imageUrl'] = imageUrl;
    data['address'] = address;
    data['UserPoints'] = userPoints;
    data['UserNotification'] = userNotification;

    return data;
  }
}
