import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Consumer<TaskData>(builder: (context, taskData, child) {
      return Container(
        color: Color(0xff757575),
        child: Container(
            padding: EdgeInsets.all(
              20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Add Task',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    onChanged: (newText) {
                      newTaskTitle = newText;
                    },
                  ),
                  FlatButton(
                    color: Colors.lightBlueAccent,
                    onPressed: () {
                      taskData.addTask(newTaskTitle);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ])),
      );
    });
  }
}
