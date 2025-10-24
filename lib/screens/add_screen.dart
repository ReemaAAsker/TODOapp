import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/providers/tasks_provider.dart';
import 'package:todo_app/utils/colors_helper.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              fontSize: 20,
              color: PrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),

          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            controller: controller,
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Provider.of<TasksDataProvider>(
                context,
                listen: false,
              ).addTask(controller.text);
              Navigator.pop(context);
              // addNewTask(controller.text);
            },
            child: Text('Add'),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(PrimaryColor),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
