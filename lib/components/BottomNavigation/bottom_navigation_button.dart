import 'package:flutter/material.dart';

class BottomNavigationButton extends StatelessWidget {
  String icon = "assets/home.png";

  BottomNavigationButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Image.asset(
          icon,
          height: 25,
          width: 25,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}