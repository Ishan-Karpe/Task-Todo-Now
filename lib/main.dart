import 'package:flutter/material.dart';
import 'package:task_todo_now/layout/home_layout.dart';
import 'package:task_todo_now/shared/constants/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          bottomSheetTheme: BottomSheetThemeData(backgroundColor: kThemeColor)),
      title: 'Task Todo Now',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeLayout(),
    );
  }
}
