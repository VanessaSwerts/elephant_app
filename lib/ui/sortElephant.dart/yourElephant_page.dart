import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/models/elephantAPI.dart';
import 'package:elephant_app/store/elephant_api_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class YourElephantPage extends StatefulWidget {
  @override
  _YourElephantPageState createState() => _YourElephantPageState();
}

class _YourElephantPageState extends State<YourElephantPage> {
  ElephantStore _elephantStore;

  @override
  void initState() {
    _elephantStore = GetIt.instance<ElephantStore>();   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screeHeight = MediaQuery.of(context).size.height;
    double screewidth = MediaQuery.of(context).size.width;  
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstsApp.brownColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          title: Text(
            "Your elephant of the day",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lora",
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: <Widget>[
            Image.asset(
              ConstsApp.background_sort,
              height: screeHeight,
              width: screewidth,
              fit: BoxFit.cover,
              alignment: Alignment(-0.4, 0),
            ),
            Column(
              children: <Widget>[
                Center(
                  heightFactor: 1.5,
                  child: Container(
                    height: 130,
                    width: 260,
                    color: ConstsApp.opacityGreenColor,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 25,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "nome",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
