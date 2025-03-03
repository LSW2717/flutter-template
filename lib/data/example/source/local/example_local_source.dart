import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/entity/example_entity.dart';
import '../../../../main_initializer.dart';
import '../../../../objectbox.g.dart';

part 'example_local_source.g.dart';

@Riverpod(keepAlive: true)
ExampleLocalSource exampleLocalSource(Ref ref) {

  final local = store.box<ExampleEntity>();
  return ExampleLocalSource(local: local);
}

class ExampleLocalSource {
  final Box<ExampleEntity> local;

  ExampleLocalSource({
    required this.local,
  });
}
