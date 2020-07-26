import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int _radioValue1 = -1;

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
              Radio(
                  value: 0,
                  groupValue: _radioValue1,
                  activeColor: Colors.white,
                  onChanged: (index) {}),
              Text(
                "Name",
                style: TextStyle(
                  color: ConstsApp.primaryGreenColor,
                  fontFamily: "Lora",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Radio(
                value: 0,
                groupValue: _radioValue1,
                onChanged: (index) {},
              ),
              Text(
                "Sex",
                style: TextStyle(
                  color: ConstsApp.primaryGreenColor,
                  fontFamily: "Lora",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Radio(
                value: 0,
                groupValue: _radioValue1,
                onChanged: (index) {},
              ),
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
        ),
      ],
    );
  }
}
