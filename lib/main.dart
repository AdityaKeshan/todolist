import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasksscreen.dart';
import 'tasklist.dart';
import 'task.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=>TaskList(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
