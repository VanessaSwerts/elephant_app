import 'package:flutter/material.dart';

class HeaderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 12,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 70,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Elephant name ",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Lora",
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          Text(
            "1996",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lora",
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
