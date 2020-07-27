import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/ui/details/widgets/body_details.dart';
import 'package:elephant_app/ui/details/widgets/floating_button_details.dart';
import 'package:elephant_app/ui/details/widgets/header_details.dart';
import 'package:flutter/material.dart';

class ElephantDetail extends StatefulWidget {
  @override
  _ElephantDetailState createState() => _ElephantDetailState();
}

class _ElephantDetailState extends State<ElephantDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstsApp.primaryGreenColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: ConstsApp.secondaryGreenColor,
          elevation: 0,
          title: Text(
            "About",
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
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: RoundedClipper(),
            child: Container(
              height: 320,
              color: ConstsApp.secondaryGreenColor,
            ),
          ),
          HeaderDetails(),
          BodyDetails(),
        ],
      ),
      floatingActionButton: FloatingButtonDetail(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class RoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
