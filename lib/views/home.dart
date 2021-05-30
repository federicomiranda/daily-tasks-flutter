import 'package:flutter/material.dart';
import '../components/Home/home_welcome_user.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: ListView(
        children: [
          HomeWelcomeUser(),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Text(
                    'My Task',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0c1454)
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeTaskStatics(
                          width: width, 
                          height: 180,
                          title: 'Completed',
                          color: 0xff91ebab,
                          margin: 20,
                          qty: 35
                        ),
                        HomeTaskStatics(
                          width: width, 
                          height: 130,
                          title: 'Canceled',
                          color: 0xffe88b8c,
                          margin: 0,
                          qty: 15
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeTaskStatics(
                          width: width, 
                          height: 130,
                          title: 'Pending',
                          color: 0xffff8960,
                          margin: 20,
                          qty: 15,
                        ),
                        HomeTaskStatics(
                          width: width, 
                          height: 180,
                          title: 'On Going',
                          color: 0xff909aeb,
                          margin: 0,
                          qty: 67,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeTaskStatics extends StatelessWidget {
  const HomeTaskStatics({
    Key key,
    @required this.width,
    @required this.height,
    @required this.title,
    @required this.color,
    @required this.margin,
    @required this.qty,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final int color;
  final double margin;
  final int qty;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: margin
      ),
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 15
      ),
      width: width * 0.5 - 30,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(color),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                Text(
                  "$qty Task",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}