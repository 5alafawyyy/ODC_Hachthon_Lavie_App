import 'package:odc_hackathon_lavie_app/domain/entities/failed.dart';

class FailedModel extends Failed {
  const FailedModel({
    required super.type,
    required super.message,
  });

  factory FailedModel.fromJson(Map<String, dynamic> json) => FailedModel(
        type: json['type'],
        message: json['message'],
      );

  // {
 

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['message'] = message;
    
    return data;
  }

}

