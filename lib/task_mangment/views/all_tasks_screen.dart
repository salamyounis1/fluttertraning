import 'package:flutter/material.dart';
import 'package:futter2/task_mangment/data/dymmy_data.dart';
import 'package:futter2/task_mangment/views/Screen/widgets/Task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function function;
  AllTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Taskwidget(tasks[index], function);
        });
  }
}
