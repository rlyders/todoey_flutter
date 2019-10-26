import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        'Buy milk',
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
