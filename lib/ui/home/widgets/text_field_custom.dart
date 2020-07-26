import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          border: Border.all(
            color: ConstsApp.primaryGreenColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          ),
          style: TextStyle(
            color: ConstsApp.primaryGreenColor,
            fontFamily: "Lora",
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          cursorColor: ConstsApp.primaryGreenColor,
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }
}
