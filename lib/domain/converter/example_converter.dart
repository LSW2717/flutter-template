import '../../data/example/dto/response/example_response.dart';
import '../entity/example_entity.dart';

class ExampleConverter {
  static ExampleEntity toEntity(ExampleResponse exampleResponse) {
    return ExampleEntity(
      exampleId: exampleResponse.exampleId,
      data: exampleResponse.data,
    );
  }
}
