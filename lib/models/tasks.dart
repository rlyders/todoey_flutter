import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/task.dart';

class Tasks extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy mail'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void toggleTaskDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addNewTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }
}
