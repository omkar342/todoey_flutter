import 'package:flutter/material.dart';
import 'dart:ui';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkedBoxCallback;
  final VoidCallback longPressedCallback;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkedBoxCallback,
      required this.longPressedCallback
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          checkedBoxCallback(newValue);
        },
        value: isChecked,
      ),
      onLongPress: longPressedCallback,
    );
  }
}
