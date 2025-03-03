import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/example/source/local/example_local_source.dart';
import 'package:flutter_template/data/example/source/remote/example_remote_source.dart';
import 'package:flutter_template/domain/converter/example_converter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/example_entity.dart';

part 'example_repository.g.dart';

@Riverpod(keepAlive: true)
ExampleRepository exampleRepository(Ref ref) {
  final remote = ref.watch(exampleRemoteSourceProvider);
  final local = ref.watch(exampleLocalSourceProvider);
  return ExampleRepository(
    remote: remote,
    local: local,
  );
}

class ExampleRepository{
  final ExampleRemoteSource remote;
  final ExampleLocalSource local;

  ExampleRepository({
    required this.remote,
    required this.local,
  });

  Future<ExampleEntity> create({required String exampleId}) async {
    final res = await remote.create(exampleId);
    return ExampleConverter.toEntity(res);
  }

  Future<void> delete({required String exampleId}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  Future<ExampleEntity> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  Future<void> update({
    required String exampleId,
    required String data,
  }) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
