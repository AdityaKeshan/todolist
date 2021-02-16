import 'package:flutter/foundation.dart';
import 'task.dart';
class TaskList extends ChangeNotifier
{
  List<Task> tasks=[
    Task(name: "Buy milk",state: false),
  ];
  void add(String t)
  {
    tasks.add(Task(name:t,state: false));
    notifyListeners();
  }
  void change(Task t)
  {
    t.change();
    notifyListeners();
  }
  void remove(int index)
  {
    tasks.removeAt(index);
    notifyListeners();
  }
}