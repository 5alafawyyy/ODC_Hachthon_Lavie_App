import 'package:odc_hackathon_lavie_app/domain/entities/plant/plant.dart';

class PlantModel extends Plant {
  const PlantModel({
    required super.id,
    required super.name,
    required super.description,
    required super.waterCapacity,
    required super.sunLight,
    required super.temperature,
  });

  factory PlantModel.fromJson(Map<String, dynamic> json) => PlantModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        waterCapacity: json['waterCapacity'],
        sunLight: json['sunLight'],
        temperature: json['temperature'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['waterCapacity'] = waterCapacity;
    data['sunLight'] = sunLight;
    data['temperature'] = temperature;
    return data;
  }
}
