import 'package:flutter/cupertino.dart';
import 'package:flutter_template/domain/repository/example_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entity/example_entity.dart';

part 'view_model.g.dart';

@riverpod
class ViewModel extends _$ViewModel {

  @protected
  late ExampleRepository exampleRepository;


  @override
  State build() {
    exampleRepository = ref.watch(exampleRepositoryProvider);

    return InitState();
  }

  Future<void> fetchExample() async {
    state = LoadingState();
    try {
      final res = await exampleRepository.create(exampleId: 'exampleId');

      state = LoadedState(example: res);
    }catch(e){
      print('fetchExample 호출 중 에러 $e');
      state = ErrorState();
    }
  }


}

sealed class State {}

class InitState extends State {}

class LoadingState extends State {}

class LoadedState extends State {
  final ExampleEntity example;

  LoadedState({
    required this.example,
  });
}

class ErrorState extends State {}
