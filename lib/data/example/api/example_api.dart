import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/common/dio/dio.dart';
import 'package:flutter_template/data/example/dto/request/example_request.dart';
import 'package:flutter_template/data/example/dto/response/example_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'example_api.g.dart';

@Riverpod(keepAlive: true)
ExampleApi exampleApi(Ref ref) {
  final dio = ref.watch(dioProvider);

  return ExampleApi(dio, baseUrl: "");
}

@RestApi()
abstract class ExampleApi{
  factory ExampleApi(Dio dio, {String baseUrl}) = _ExampleApi;


  @POST('/path')
  Future<ExampleResponse> create(@Body() ExampleRequest request);

}
