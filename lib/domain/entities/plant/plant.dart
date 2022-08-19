import 'package:equatable/equatable.dart';

class Plant extends Equatable {
  final int id;
  final String name;
  final String description;
  final int waterCapacity;
  final int sunLight;
  final int temperature;

  const Plant({
    required this.id,
    required this.name,
    required this.description,
    required this.waterCapacity,
    required this.sunLight,
    required this.temperature,
  });

  @override
  List<Object> get props => [
        id,
        name,
        description,
        waterCapacity,
        sunLight,
        temperature,
      ];
}
