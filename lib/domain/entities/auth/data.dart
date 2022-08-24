import 'package:equatable/equatable.dart';
import 'package:odc_hackathon_lavie_app/data/models/user/user_model.dart';

class Data extends Equatable {
  final UserModel? user;
  final String? accessToken;
  final String? refreshToken;

  const Data({
    required this.user,
    required this.accessToken,
    required this.refreshToken,
  });

  @override
  List<Object?> get props => [
        user,
        accessToken,
        refreshToken,
      ];
}
