import 'package:flutter/material.dart';
import 'bottom_navigation_button.dart';
import 'bottom_navigation_button_add.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Colors.purple
      ),
      child: Container(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 10,
            bottom: 20
          ),
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x22000000),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 0),
              )
            ]
          ),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BottomNavigationButton("assets/home.png"),
              BottomNavigationButton("assets/tasks.png"),
              BottomNavigationButtonAdd(),
              BottomNavigationButton("assets/config.png"),
              BottomNavigationButton("assets/profile.png")
            ],
          ),
        ),
      )
    );
  }
}