import 'package:flutter/material.dart';

class HomeWelcomeUser extends StatelessWidget {
  const HomeWelcomeUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 40,
        bottom: 40
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                child: Text(
                  "Hi, Jack",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff5a67ca),
                  ),
                ),
              ),
              Text(
                "Let's make this day productive",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              "assets/profile_pic.jpg",
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            )
          ),
        ],
      ),
    );
  }
}