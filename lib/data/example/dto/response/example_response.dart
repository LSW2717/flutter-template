import 'package:json_annotation/json_annotation.dart';


part 'example_response.g.dart';

@JsonSerializable()
class ExampleResponse {
  String exampleId;
  String data;
  ExampleResponse({
    required this.exampleId,
    required this.data,
  });

  factory ExampleResponse.fromJson(Map<String, dynamic> json) => _$ExampleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleResponseToJson(this);
}