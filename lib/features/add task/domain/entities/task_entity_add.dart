import 'package:equatable/equatable.dart';

class TaskAddEntity extends Equatable {
  final int id;
  final String title;
  final String describe;
  final bool isCompleted;
  final String createdAt;

  const TaskAddEntity({
    required this.id,
    required this.title,
    required this.describe,
    required this.isCompleted,
    required this.createdAt,
  });

  @override
  List<Object> get props => [id, title, describe, isCompleted, createdAt];
}
