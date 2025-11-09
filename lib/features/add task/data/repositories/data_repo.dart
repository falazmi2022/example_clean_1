import 'package:to_do_clean_ar/features/add%20task/data/data_sources/add_task_data_source.dart';
import 'package:to_do_clean_ar/features/add%20task/domain/entities/task_entity_add.dart';
import 'package:to_do_clean_ar/features/add%20task/domain/repositories/repo_add_task_domain.dart';

class DataRepoTask implements RepoTaskDomain {
  final BaseTaskDataSource addTaskDataSource;

  DataRepoTask({required this.addTaskDataSource});

  @override
  Future<void> setTask({required String title, required String describe}) {
    return addTaskDataSource.setTask(title: title, describe: describe);
  }

  @override
  List<TaskAddEntity> viewTask() {
    return addTaskDataSource.viewTask();
  }
}
