import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy mail'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount => tasks.length;

  void toggleTaskDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addNewTask(String taskName) {
    tasks.add(Task(name: taskName));
    notifyListeners();
  }
}
