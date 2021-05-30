import 'package:flutter/material.dart';
import '../components/Home/home_welcome_user.dart';
import '../components/Home/home_my_tasks_statics.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: ListView(
        children: [
          HomeWelcomeUser(),
          HomeMyTasksStatics(width: width)
        ],
      ),
    );
  }
}