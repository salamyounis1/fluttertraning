import 'package:flutter/material.dart';
import 'package:futter2/Scroll.dart';
import 'package:futter2/dummy.dart';

import 'package:futter2/project11/screens/home.dart';
import 'package:futter2/responsive_design/res_screen.dart';
import 'package:futter2/social_app/views/screens/main_socialapp_screen.dart';

import 'package:futter2/statefull_screen2.dart';
import 'package:futter2/task_mangment/main_task.dart';

void main(List<String> args) {
  // runApp(MaterialApp(
  //   home: MainTaskScreen(),
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: mainScreen2(),
    );
  }
}
