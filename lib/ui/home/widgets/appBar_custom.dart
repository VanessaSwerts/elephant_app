import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double appBarPhone = MediaQuery.of(context).padding.top;
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: appBarPhone,
          ),
          child: Text(
            "Elephant App",
            style: TextStyle(
              color: ConstsApp.primaryGreenColor,
              fontFamily: "Lora",
              fontWeight: FontWeight.w500,
              fontSize: 36,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "Search",
            style: TextStyle(
              color: ConstsApp.primaryGreenColor,
              fontFamily: "Lora",
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        Padding(
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0)),
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
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 8,
              ),
              SizedBox(width: 5),
              Text(
                "Name",
                style: TextStyle(
                  color: ConstsApp.primaryGreenColor,
                  fontFamily: "Lora",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 15),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 8,
              ),
              SizedBox(width: 5),
              Text(
                "Sex",
                style: TextStyle(
                  color: ConstsApp.primaryGreenColor,
                  fontFamily: "Lora",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 15),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 8,
              ),
              SizedBox(width: 5),
              Text(
                "Specie",
                style: TextStyle(
                  color: ConstsApp.primaryGreenColor,
                  fontFamily: "Lora",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
