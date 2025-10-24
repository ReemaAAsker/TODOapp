import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/providers/tasks_provider.dart';
import 'package:todo_app/screens/add_screen.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'package:todo_app/utils/colors_helper.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: PrimaryColor,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reema TODO App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${Provider.of<TasksDataProvider>(context).tasks.length} Tasks',
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 400,
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TasksList(),
            ),
          ],
        ),
      ),
    );
  }
}
