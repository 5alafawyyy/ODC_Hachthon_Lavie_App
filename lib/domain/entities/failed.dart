import 'package:equatable/equatable.dart';

class Failed extends Equatable {
  final String? type;
  final String? message;


  const Failed({
    required this.type,
    required this.message,
  });

  @override
  List<Object?> get props => [
        type,
        message,
      ];
}


