import 'package:flutter/material.dart';

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