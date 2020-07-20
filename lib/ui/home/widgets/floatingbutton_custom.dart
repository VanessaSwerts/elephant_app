import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';
import 'package:elephant_app/conts/routes.dart';

class CustomFloatingButton extends StatelessWidget {
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
          child: Icon(
            Icons.search,
            size: 40,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, sortElephantPage);
        },
      ),
    );
  }
}
