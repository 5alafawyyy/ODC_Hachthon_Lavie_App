import 'package:odc_hackathon_lavie_app/domain/entities/tool/tool.dart';

class ToolModel extends Tool {
  const ToolModel({
    required super.id,
    required super.name,
    required super.description,
  });

  factory ToolModel.fromJson(Map<String, dynamic> json) => ToolModel(
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
