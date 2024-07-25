import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'specializations_response_model.g.dart';

@JsonSerializable()
class SpecializationsResponseModel {
  String? message;
  @JsonKey(name: 'data')
  List<SpecializationsData>? specializationsData;
  bool? status;
  int? code;

  SpecializationsResponseModel({
    this.message,
    this.specializationsData,
    this.status,
    this.code,
  });

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SpecializationsResponseModelFromJson(json);
  }
}
