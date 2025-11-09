import 'dart:math';

import 'package:get_storage/get_storage.dart';
import 'package:to_do_clean_ar/features/add%20task/data/models/add_task_model.dart';

abstract class BaseTaskDataSource {
  Future<void> setTask({required String title, required String describe});

  List<AddTaskModel> viewTask();
}

class ApiTaskDataSource implements BaseTaskDataSource {
  final GetStorage box;

  ApiTaskDataSource({required this.box});
  @override
  Future<void> setTask({
    required String title,
    required String describe,
  }) async {
    try {
      final AddTaskModel task = AddTaskModel(
        id: Random().nextInt(999999999),
        title: title,
        describe: describe,
        isCompleted: false,
        createdAt: DateTime.now().toIso8601String(),
      );
      List<Map<String, dynamic>> tasks = [];
      if (box.hasData('task')) {
        tasks = (box.read('task') as List).cast<Map<String, dynamic>>();
      }
      tasks.add(task.toMap());
      await box.write('task', tasks);
    } catch (error) {
      throw Exception("Can't add Method");
    }
  }

  @override
  List<AddTaskModel> viewTask() {
    try {
      List<Map<String, dynamic>> tasks = [];

      if (box.hasData('task')) {
        tasks = (box.read('task') as List).cast<Map<String, dynamic>>();
      }

      return tasks.map((item) => AddTaskModelMapper.fromMap(item)).toList();
    } catch (error) {
      throw Exception("Can't add Method");
    }
  }
}
