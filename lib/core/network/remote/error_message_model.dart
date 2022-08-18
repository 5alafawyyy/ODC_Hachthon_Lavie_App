import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String type;
  final String statusMessage;

  const ErrorMessageModel({
    required this.type,
    required this.statusMessage,
  });

  factory ErrorMessageModel.fromjson(Map<String, dynamic> json) =>
      ErrorMessageModel(
        type: json['type'],
        statusMessage: json['message'],
      );

  @override
  List<Object?> get props => [
        type,
        statusMessage,
      ];
}
