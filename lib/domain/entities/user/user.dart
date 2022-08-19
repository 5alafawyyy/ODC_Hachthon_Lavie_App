import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final String address;
  final String userPoints;
  final List<String> userNotification;

  const User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.address,
    required this.userPoints,
    required this.userNotification,
  });

  @override
  List<Object> get props => [
        id,
        email,
        firstName,
        lastName,
        imageUrl,
        address,
        userPoints,
        userNotification,
      ];
}
