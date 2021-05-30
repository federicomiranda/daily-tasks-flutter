import 'package:flutter/material.dart';

class BottomNavigationButtonAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        '+', 
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: TextButton.styleFrom(
        minimumSize: Size(60, 60),
        textStyle: TextStyle(
          fontSize: 30,
          color: Colors.white
        ),
        backgroundColor: Color(0xff5a67ca),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        )
      )
    );
  }
}