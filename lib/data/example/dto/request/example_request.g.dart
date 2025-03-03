// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExampleRequest _$ExampleRequestFromJson(Map<String, dynamic> json) =>
    ExampleRequest(
      exampleId: json['exampleId'] as String,
      data: json['data'] as String,
    );

Map<String, dynamic> _$ExampleRequestToJson(ExampleRequest instance) =>
    <String, dynamic>{
      'exampleId': instance.exampleId,
      'data': instance.data,
    };
