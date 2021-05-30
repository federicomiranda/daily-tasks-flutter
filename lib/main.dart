import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'daily_tasks.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Tasks',
      debugShowCheckedModeBanner: false,
      home: DailyTasks()
    );
  }
}