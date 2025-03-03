
import 'package:json_annotation/json_annotation.dart';

part 'example_request.g.dart';

@JsonSerializable()
class ExampleRequest {
  String exampleId;
  String data;

  ExampleRequest({
    required this.exampleId,
    required this.data,
  });

  factory ExampleRequest.fromJson(Map<String, dynamic> json) =>
      _$ExampleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleRequestToJson(this);
}
