import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            height: 320,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 50.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12.0, bottom: 5.0),
                          child: Text(
                            "Age: ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Text(
                          "59",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lora",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12.0, bottom: 5.0),
                          child: Text(
                            "Sex: ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lora",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12.0, bottom: 5.0),
                            child: Text(
                              "Specie: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            "Asian",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12.0, bottom: 5.0),
                            child: Text(
                              "Affiliation: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Text(
                            "Dasara",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0, bottom: 5.0),
                  child: Text(
                    "More about me: ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Lora",
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
                Text(
                  "Dasara",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lora",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
