import 'package:odc_hackathon_lavie_app/domain/entities/seed/seed.dart';

class SeedModel extends Seed {
  const SeedModel({
    required super.id,
    required super.name,
    required super.description,
  });

  factory SeedModel.fromJson(Map<String, dynamic> json) => SeedModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;

    return data;
  }
}
