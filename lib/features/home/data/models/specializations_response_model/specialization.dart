import 'package:json_annotation/json_annotation.dart';

part 'specialization.g.dart';

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({
    this.id,
    this.name,
  });

  factory Specialization.fromJson(Map<String, dynamic> json) {
    return _$SpecializationFromJson(json);
  }
}
