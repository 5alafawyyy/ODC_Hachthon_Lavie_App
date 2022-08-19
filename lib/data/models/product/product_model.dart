import 'package:odc_hackathon_lavie_app/domain/entities/product/product.dart';

class ProductModel extends Product {
  const ProductModel({
    required super.id,
    required super.name,
    required super.description,
    required super.imageUrl,
    required super.type,
    required super.price,
    required super.plant,
    required super.seed,
    required super.tool,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        imageUrl: json['imageurl'],
        type: json['type'],
        price: json['price'],
        plant: json['plant'],
        seed: json['seed'],
        tool: json['tool'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['imageurl'] = imageUrl;
    data['type'] = type;
    data['price'] = price;
    data['plant'] = plant;
    data['seed'] = seed;
    data['tool'] = tool;

    return data;
  }
}
