import 'package:flutter/material.dart';
import './home_task_statics.dart';

class HomeMyTasksStatics extends StatelessWidget {
  const HomeMyTasksStatics({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              'My Tasks',
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
    );
  }
}