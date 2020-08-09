import 'package:elephant_app/store/elephant_api_store.dart';
import 'package:elephant_app/utils/format.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class BodyDetails extends StatefulWidget {
  final int index;

  BodyDetails({this.index});

  @override
  _BodyDetailsState createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  ElephantStore _elephantStore = GetIt.instance<ElephantStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Container(
            height: 320,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 40.0,
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
                              calcAge(
                                  yearB: _elephantStore.elephantList[widget.index].dob,
                                  yearD:
                                      _elephantStore.elephantList[widget.index].dod),
                              style: TextStyle(
                                color: Colors.white54,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
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
                              _elephantStore.elephantList[widget.index].sex,
                              style: TextStyle(
                                color: Colors.white54,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 40.0,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 12.0, bottom: 5.0),
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
                                _elephantStore.elephantList[widget.index].species,
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: "Lora",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 12.0, bottom: 5.0),
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
                                _elephantStore.elephantList[widget.index].affiliation.replaceFirst(",", ",\n"),
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: "Lora",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                    _elephantStore.elephantList[widget.index].note,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontFamily: "Lora",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
