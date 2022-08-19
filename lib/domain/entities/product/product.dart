import 'package:equatable/equatable.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/plant/plant.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/seed/seed.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/tool/tool.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String type;
  final int price;
  final Plant plant;
  final Seed seed;
  final Tool tool;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.type,
    required this.price,
    required this.plant,
    required this.seed,
    required this.tool,
  });

  @override
  List<Object> get props => [
        id,
        name,
        description,
        imageUrl,
        type,
        price,
        plant,
        seed,
        tool,
      ];
}
