import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  TaskTile(this.task);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListTile(
        leading: Text(
          task.name,
          style: TextStyle(
            fontSize: 18.0,
            decoration: task.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: task.isDone,
          onChanged: (newValue) {
            taskData.updateTask(task);
          },
        ),
      );
    });
  }
}
