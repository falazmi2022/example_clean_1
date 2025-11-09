import 'package:to_do_clean_ar/features/add%20task/domain/entities/task_entity_add.dart';

abstract class RepoTaskDomain {

  
  Future<void> setTask({required String title, required String describe});

  List<TaskAddEntity> viewTask();
}
