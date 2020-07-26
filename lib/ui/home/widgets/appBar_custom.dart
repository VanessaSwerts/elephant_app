import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/ui/home/widgets/radio_button_custom.dart';
import 'package:elephant_app/ui/home/widgets/text_field_custom.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    double appBarPhone = MediaQuery.of(context).padding.top;
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: appBarPhone + 16,
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
          padding: const EdgeInsets.only(top: 12.0),
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
        CustomTextField(),
        CustomRadioButton(),
      ],
    );
  }
}
