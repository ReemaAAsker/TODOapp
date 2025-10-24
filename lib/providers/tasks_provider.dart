import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';

class TasksDataProvider extends ChangeNotifier {
  List<TaskModel> tasks = [];

  void addTask(String taskTitle) {
    tasks.add(TaskModel(title: taskTitle));

    notifyListeners();
  }

  void updateCompletedTask(TaskModel task) {
    task.toggleCompleted();
    notifyListeners();
  }

  void deleteTask(TaskModel task) {
    tasks.remove(task);
    notifyListeners();
  }
}
