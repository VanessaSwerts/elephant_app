import 'package:animations/animations.dart';
import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/ui/search/search_page.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatefulWidget {
  @override
  _CustomFloatingButtonState createState() => _CustomFloatingButtonState();
}

class _CustomFloatingButtonState extends State<CustomFloatingButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: Duration(milliseconds: 1700),
      closedShape: CircleBorder(),
      closedBuilder: (BuildContext c, VoidCallback action) => SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle,
                  color: ConstsApp.brownColor),
              child: Icon(
                Icons.search,
                size: 40,
              )),
        ),
      ),
      openBuilder: (BuildContext c, VoidCallback action) => SearchPage(),
      tappable: true,
    );
  }
}
