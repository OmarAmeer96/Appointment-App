import 'package:json_annotation/json_annotation.dart';

import 'governrate.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  int? id;
  String? name;
  Governrate? governrate;

  City({
    this.id,
    this.name,
    this.governrate,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
