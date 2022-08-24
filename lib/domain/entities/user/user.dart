import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userId;
  final String email;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final String? address;

  final String? role;

  const User({
    required this.userId,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.address,

    required this.role,
  });

  @override
  List<Object> get props => [
        userId,
        email,
        firstName,
        lastName,
        imageUrl,
      ];
}
