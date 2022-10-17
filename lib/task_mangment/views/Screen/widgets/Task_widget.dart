import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futter2/task_mangment/models/task_model.dart';
import 'package:futter2/task_mangment/models/task_model.dart';

class Taskwidget extends StatelessWidget {
  Taskmodel taskmodel;
  Taskwidget(this.taskmodel, Function function);
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: taskmodel.isComplete,
      onChanged: (v) {},
      title: Text(taskmodel.name),
    );
  }
}
