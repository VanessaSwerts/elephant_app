import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class FloatingButtonDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 9.8,
      child: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
              color: ConstsApp.brownColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
