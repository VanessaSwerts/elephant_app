import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/conts/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    SystemChrome.setEnabledSystemUIOverlays([]);

    Future.delayed(Duration(seconds: 3)).then(
      (_) {
        Navigator.pushReplacementNamed(context, home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstsApp.primaryGreenColor,
      body: Stack(
        children: <Widget>[
          Center(
            heightFactor: 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  ConstsApp.elephant_icon,
                  height: 130,
                  width: 130,
                ),
                Text(
                  "Elephant App",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lora",
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
