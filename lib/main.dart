import 'package:flutter/material.dart';
import 'package:todo_app/providers/tasks_provider.dart';
import 'package:todo_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const TodDoAPP());
}

class TodDoAPP extends StatelessWidget {
  const TodDoAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksDataProvider(),
      child: MaterialApp(title: 'To do App', home: TasksScreen()),
    );
  }
}
