import 'package:json_annotation/json_annotation.dart';

part 'governrate.g.dart';

@JsonSerializable()
class Governrate {
  int? id;
  String? name;

  Governrate({
    this.id,
    this.name,
  });

  factory Governrate.fromJson(Map<String, dynamic> json) {
    return _$GovernrateFromJson(json);
  }
}
