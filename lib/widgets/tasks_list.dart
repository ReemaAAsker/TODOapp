import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/providers/tasks_provider.dart';
import 'package:todo_app/widgets/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  // 2 point >> Ahmed , Israa , Balsem , Saja
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksDataProvider>(
      builder: (context, taskProvider, child) {
        return ListView.builder(
          itemCount: taskProvider.tasks.length,
          itemBuilder: (context, index) => Task(
            task: taskProvider.tasks[index],
            onUserChange: (value) {
              taskProvider.updateCompletedTask(taskProvider.tasks[index]);
            },
            deleteTask: () {
              taskProvider.deleteTask(taskProvider.tasks[index]);
            },
          ),
        );
      },
    );
  }
}
