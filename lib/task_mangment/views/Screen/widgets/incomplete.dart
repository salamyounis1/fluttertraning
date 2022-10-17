import 'package:flutter/material.dart';
import 'package:futter2/task_mangment/views/Screen/widgets/Task_widget.dart';

import '../../../data/dymmy_data.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function function;
  InCompleteTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasks.where((element) => !element.isComplete).length,
        itemBuilder: (context, index) {
          return Taskwidget(
              tasks.where((element) => !element.isComplete).toList()[index],
              function);
        });
  }
}
