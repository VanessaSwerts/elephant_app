import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';
import 'package:elephant_app/conts/routes.dart';

class CustomFloatingButton extends StatefulWidget {
  @override
  _CustomFloatingButtonState createState() => _CustomFloatingButtonState();
}

class _CustomFloatingButtonState extends State<CustomFloatingButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 4),
              shape: BoxShape.circle,
              color: ConstsApp.brownColor),
          child: isPressed == false
              ? Icon(
                  Icons.search,
                  size: 40,
                )
              : Center(
                  child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )),
        ),
        onPressed: () async {
          setState(() {
            isPressed = true;
          });
          await Future.delayed(Duration(milliseconds: 3000), () => 30);
          Navigator.pushNamed(context, searchPage);
          setState(() {
            isPressed = false;
          });
        },
      ),
    );
  }
}
