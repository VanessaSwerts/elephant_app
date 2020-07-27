import 'dart:async';

import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/conts/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    );

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });

    Future.delayed(Duration(milliseconds: 3500)).then(
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
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            heightFactor: 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  ConstsApp.elephant_icon,
                  height: animation.value * 130,
                  width: animation.value * 130,
                ),
                Text(
                  "Elephant App",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Lora",
                    fontWeight: FontWeight.w500,
                    fontSize: animation.value * 30,
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
