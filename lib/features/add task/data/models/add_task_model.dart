import 'package:to_do_clean_ar/features/add%20task/domain/entities/task_entity_add.dart';
import 'package:dart_mappable/dart_mappable.dart';
part 'add_task_model.mapper.dart';

@MappableClass()
class AddTaskModel extends TaskAddEntity with AddTaskModelMappable {
  AddTaskModel({
    required super.id,
    required super.title,
    required super.describe,
    required super.isCompleted,
    required super.createdAt,
  });
}
