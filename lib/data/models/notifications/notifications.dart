import 'package:equatable/equatable.dart';

class NotificationModel extends Equatable {
  final int id;
  final String imageUrl;
  final String title;
  final String date;

  const NotificationModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.date,
  });

  @override
  List<Object?> get props => [id, imageUrl, title, date];
}
