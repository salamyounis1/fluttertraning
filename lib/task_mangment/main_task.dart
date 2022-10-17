import 'package:flutter/material.dart';
import 'package:futter2/task_mangment/data/dymmy_data.dart';
import 'package:futter2/task_mangment/models/task_model.dart';
import 'package:futter2/task_mangment/views/Screen/widgets/completetasks.dart';
import 'package:futter2/task_mangment/views/Screen/widgets/incomplete.dart';
import 'package:futter2/task_mangment/views/all_tasks_screen.dart';

class MainTaskScreen extends StatefulWidget {
  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen>
    with SingleTickerProviderStateMixin {
  checkTask(Taskmodel taskModel) {
    int index = tasks.indexOf(taskModel);
    tasks[index].isComplete = !tasks[index].isComplete;
    setState(() {});
  }

  late TabController tab;
  initializeTabController() {
    tab = TabController(length: 3, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    initializeTabController();
  }

  @override
  void dispose() {
    super.dispose();
    tab.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('S'),
              ),
              accountEmail: Text('salamyounis@gmail.com'),
              accountName: Text('Salam'),
            ),
            ListTile(
              title: Text('All Tasks'),
              subtitle: Text('go to all Tasks'),
              leading: Icon(Icons.done),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                tab.animateTo(0);
              },
            ),
            ListTile(
              title: Text('complete Tasks'),
              subtitle: Text('go to complete Tasks'),
              leading: Icon(Icons.done),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                tab.animateTo(1);
              },
            ),
            ListTile(
              title: Text('incomplete Tasks'),
              subtitle: Text('go to incomplete Tasks'),
              leading: Icon(Icons.done),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                tab.animateTo(2);
              },
            )
          ]),
        ),
        appBar: AppBar(
          title: Text('Task Management'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'All Tasks',
            ),
            Tab(
              text: 'Complete Tasks',
            ),
            Tab(
              text: 'Incomplete Tasks',
            ),
          ]),
        ),
        body: TabBarView(controller: tab, children: [
          AllTasksScreen(checkTask),
          CompleteTasksScreen(checkTask),
          InCompleteTasksScreen(checkTask)
        ]),
      ),
    );
  }
}
