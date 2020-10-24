import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    double appBarPhone = MediaQuery.of(context).padding.top;
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: appBarPhone + 60,
        ),
        child: Text(
          "Elephant App",
          style: TextStyle(
            color: ConstsApp.primaryGreenColor,
            fontFamily: "Lora",
            fontWeight: FontWeight.w500,
            fontSize: 42,
          ),
        ),
      ),
    );
  }
}
