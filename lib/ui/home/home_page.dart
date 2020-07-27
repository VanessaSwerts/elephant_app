import 'package:animations/animations.dart';
import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/ui/home/widgets/appBar_custom.dart';
import 'package:elephant_app/ui/home/widgets/bottomBar_custom.dart';
import 'package:elephant_app/ui/home/widgets/floatingbutton_custom.dart';
import 'package:elephant_app/ui/sortElephant.dart/sortElephant_page.dart';
import 'package:flutter/material.dart';
import 'package:elephant_app/conts/routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  Widget pageCaller(int index) {
    switch (index) {
      case 0:
        {
          return SafeArea(
            top: false,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ConstsApp.background_home,
                  ),
                  alignment: Alignment(0.42, 0),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.all(0),
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      CustomAppBar(),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      case 4:
        return SortElephantPage();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: PageTransitionSwitcher(
        duration: Duration(milliseconds: 600),
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            fillColor: ConstsApp.primaryGreenColor,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: pageCaller(currentIndex),
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomBar(
        currentIndex: currentIndex,
        func: (index) {
          setState(() {
            currentIndex = index;
            if (currentIndex == 1) {
              setState(() {
                currentIndex = 0;
              });

              Navigator.pushNamed(context, listElephants);
            } else if (currentIndex == 3) {
              setState(() {
                currentIndex = 0;
              });
              Navigator.pushNamed(context, favoritesPage);
            }
          });
        },
      ),
    );
  }
}
