import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/utils/colors_helper.dart';

class Task extends StatelessWidget {
  final TaskModel task;
  final Function(bool?)? onUserChange;
  final Function()? deleteTask;

  Task({
    required this.task,
    required this.onUserChange,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        task.title,
        style: TextStyle(
          color: Colors.white,
          decoration: task.isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isCompleted,
        activeColor: BackgroundColor,
        onChanged: onUserChange,
      ),
    );
  }
}
