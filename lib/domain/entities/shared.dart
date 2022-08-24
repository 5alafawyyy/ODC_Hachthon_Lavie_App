import 'package:equatable/equatable.dart';

class SharedProducts extends Equatable {
  final String? type;
  final String? message;
  final List<dynamic>? product;

  const SharedProducts({
    required this.type,
    required this.message,
    required this.product,
  });

  @override
  List<Object?> get props => [
        // type,
        // message,
        // product,
      ];
}


class SharedPlants extends Equatable {
  final String? type;
  final String? message;
  final List<dynamic>? plant;

  const SharedPlants({
    required this.type,
    required this.message,
    required this.plant,
  });

  @override
  List<Object?> get props => [
        // type,
        // message,
        // product,
      ];
}


class SharedSeeds extends Equatable {
  final String? type;
  final String? message;
  final List<dynamic>? seed;

  const SharedSeeds({
    required this.type,
    required this.message,
    required this.seed,
  });

  @override
  List<Object?> get props => [
        // type,
        // message,
        // product,
      ];
}


class SharedTools extends Equatable {
  final String? type;
  final String? message;
  final List<dynamic>? tool;

  const SharedTools({
    required this.type,
    required this.message,
    required this.tool,
  });

  @override
  List<Object?> get props => [
        // type,
        // message,
        // product,
      ];
}