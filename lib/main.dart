import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:to_do_clean_ar/core/setup.dart';
import 'package:to_do_clean_ar/features/add%20task/domain/use_cases/add_task_use_case.dart';
import 'package:to_do_clean_ar/features/products/data/data_sources/data_source_data.dart';
import 'package:to_do_clean_ar/features/products/data/repositories/reop_date.dart';
import 'package:to_do_clean_ar/features/products/domain/use_cases/products_use_case.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await init();
  final apiSourceData = ApiDataSource(dio: Dio());
  final repoDate = ApiRepoDate(apiSourceData: apiSourceData);
  final useCase = ProductsUseCase(repoData: repoDate);
  final x = await useCase.getProduct();
  print(x);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              await getIt.get<TaskUseCase>().setTask(
                title: "Test",
                describe: "Here is descrip",
              );

              final viewTask = getIt.get<TaskUseCase>().viewTask();
              viewTask.map((task) => print(task)).toList();
            },
            child: Text("Add"),
          ),
        ),
      ),
    );
  }
}
