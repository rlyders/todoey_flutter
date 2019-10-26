import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TasksList extends StatefulWidget {
  TasksList();

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return new TaskTile(Provider.of<Tasks>(context).tasks[index]);
      },
      itemCount: Provider.of<Tasks>(context).tasks.length,
    );
  }
}
