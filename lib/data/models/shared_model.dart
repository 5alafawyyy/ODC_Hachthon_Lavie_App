import 'package:odc_hackathon_lavie_app/domain/entities/shared.dart';

class SharedProductsModel extends SharedProducts {
  const SharedProductsModel({
    required super.type,
    required super.message,
    required super.product,
  });

  factory SharedProductsModel.fromJson(Map<String, dynamic> json) =>
      SharedProductsModel(
        type: json['type'],
        message: json['message'],
        product: json['data'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    data['data'] = data;

    return data;
  }
}

class SharedPlantsModel extends SharedPlants {
  const SharedPlantsModel({
    required super.type,
    required super.message,
    required super.plant,
  });

  factory SharedPlantsModel.fromJson(Map<String, dynamic> json) =>
      SharedPlantsModel(
        type: json['type'],
        message: json['message'],
        plant: json['data'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    data['data'] = plant;

    return data;
  }
}


class SharedToolsModel extends SharedTools {
  const SharedToolsModel({
    required super.type,
    required super.message,
    required super.tool,
  });

  factory SharedToolsModel.fromJson(Map<String, dynamic> json) =>
      SharedToolsModel(
        type: json['type'],
        message: json['message'],
        tool: json['data'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    data['data'] = tool;

    return data;
  }
}

class SharedSeedsModel extends SharedSeeds {
  const SharedSeedsModel({
    required super.type,
    required super.message,
    required super.seed,
  });

  factory SharedSeedsModel.fromJson(Map<String, dynamic> json) =>
      SharedSeedsModel(
        type: json['type'],
        message: json['message'],
        seed: json['data'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    data['data'] = seed;

    return data;
  }
}
