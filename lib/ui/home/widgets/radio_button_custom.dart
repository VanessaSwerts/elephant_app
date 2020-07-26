import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int _radioValue1 = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 30,
            height: 30,
            child: Radio(
                value: 0,
                groupValue: _radioValue1,
                activeColor: ConstsApp.primaryGreenColor,
                onChanged: (index) {
                  setState(() {
                    _radioValue1 = 0;
                  });
                }),
          ),
          Text(
            "Name",
            style: TextStyle(
              color: ConstsApp.primaryGreenColor,
              fontFamily: "Lora",
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 30,
            height: 30,
            child: Radio(
              value: 1,
              groupValue: _radioValue1,
              activeColor: ConstsApp.primaryGreenColor,
              onChanged: (index) {
                setState(() {
                  _radioValue1 = 1;
                });
              },
            ),
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
          SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 30,
            height: 30,
            child: Radio(
              value: 2,
              groupValue: _radioValue1,
              activeColor: ConstsApp.primaryGreenColor,
              onChanged: (index) {
                setState(() {
                  _radioValue1 = 2;
                });
              },
            ),
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
    );
  }
}
