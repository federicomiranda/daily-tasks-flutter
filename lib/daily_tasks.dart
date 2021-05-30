import 'package:flutter/material.dart';
import './views/home.dart';
import 'components/BottomNavigation/bottom_navigation.dart';

class DailyTasks extends StatefulWidget {
  DailyTasks({Key key}) : super(key: key);

  @override
  _DailyTasksState createState() => _DailyTasksState();
}

class _DailyTasksState extends State<DailyTasks> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    Home(),
    Home(),
    Home()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.white,
        width: width,
        height: height,
        child: SafeArea(
          child: widgetsChildren[indexTap]
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}