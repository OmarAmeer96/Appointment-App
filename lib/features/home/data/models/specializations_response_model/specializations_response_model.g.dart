// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specializations_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationsResponseModel _$SpecializationsResponseModelFromJson(
        Map<String, dynamic> json) =>
    SpecializationsResponseModel(
      message: json['message'] as String?,
      specializationsData: (json['data'] as List<dynamic>?)
          ?.map((e) => SpecializationsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SpecializationsResponseModelToJson(
        SpecializationsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.specializationsData,
      'status': instance.status,
      'code': instance.code,
    };
