import 'package:to_do_clean_ar/features/add%20task/domain/entities/task_entity_add.dart';
import 'package:to_do_clean_ar/features/add%20task/domain/repositories/repo_add_task_domain.dart';

class TaskUseCase {
  final RepoTaskDomain repoDataTask;

  TaskUseCase({required this.repoDataTask});

  Future<void> setTask({required String title, required String describe}) {
    return repoDataTask.setTask(title: title, describe: describe);
  }

  List<TaskAddEntity> viewTask() {
    return repoDataTask.viewTask();
  }
}
