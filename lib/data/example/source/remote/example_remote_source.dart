import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/example/dto/request/example_request.dart';
import 'package:flutter_template/data/example/dto/response/example_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../api/example_api.dart';

part 'example_remote_source.g.dart';


@Riverpod(keepAlive: true)
ExampleRemoteSource exampleRemoteSource(Ref ref) {
  final exampleApi = ref.watch(exampleApiProvider);
  return ExampleRemoteSource(exampleApi: exampleApi);
}

class ExampleRemoteSource {
  final ExampleApi exampleApi;

  ExampleRemoteSource({
    required this.exampleApi,
  });


  Future<ExampleResponse> create(String exampleId) async {

    final request = ExampleRequest(exampleId: exampleId, data: '');

    return await exampleApi.create(request);
  }
}
