import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/ui/home/widgets/appBar_custom.dart';
import 'package:elephant_app/ui/home/widgets/bottomBar_custom.dart';
import 'package:elephant_app/ui/home/widgets/floatingbutton_custom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screeHeight = MediaQuery.of(context).size.height;   
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstsApp.brownColor,
      body: SafeArea(
        top: false,
        child: Stack(
          children: <Widget>[
            Image.asset(
              ConstsApp.background_home,
              height: screeHeight,
              fit: BoxFit.cover,
              alignment: Alignment(0.42, 0),
            ),
            CustomAppBar(),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
