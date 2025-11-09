import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:get_storage/get_storage.dart';
import 'package:to_do_clean_ar/features/add%20task/data/data_sources/add_task_data_source.dart';
import 'package:to_do_clean_ar/features/add%20task/data/repositories/data_repo.dart';
import 'package:to_do_clean_ar/features/add%20task/domain/use_cases/add_task_use_case.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  await GetStorage.init();
  final box = GetStorage();

  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<GetStorage>(() => box);
  getIt.registerLazySingleton<ApiTaskDataSource>(
    () => ApiTaskDataSource(box: getIt.get<GetStorage>()),
  );
  getIt.registerLazySingleton<DataRepoTask>(
    () => DataRepoTask(addTaskDataSource: getIt.get<ApiTaskDataSource>()),
  );
  getIt.registerLazySingleton<TaskUseCase>(
    () => TaskUseCase(repoDataTask: getIt.get<DataRepoTask>()),
  );
}
