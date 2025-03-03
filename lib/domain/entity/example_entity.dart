import 'package:objectbox/objectbox.dart';

@Entity()
class ExampleEntity {
  int id = 0;
  String exampleId;
  String data;

  ExampleEntity({
    required this.exampleId,
    required this.data,
  });
}
