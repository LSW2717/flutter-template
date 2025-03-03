import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class ViewModel extends _$ViewModel {
  @override
  State build() {
    return InitState();
  }
}

sealed class State{}

class InitState extends State{}

class LoadingState extends State{}

class LoadedState extends State{}

class ErrorState extends State{}
