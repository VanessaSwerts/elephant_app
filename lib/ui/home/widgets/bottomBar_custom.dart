import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function func;

  CustomBottomBar({this.currentIndex, this.func});
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: ConstsApp.secondaryGreedColor,
        primaryColor: Colors.grey,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Colors.white),
            ),
      ),
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: func,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontFamily: "Lora",
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text(
                'Elephants',
                style: TextStyle(
                  fontFamily: "Lora",
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.transparent,
                ),
                title: Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Text(
                    'Search',
                    style: TextStyle(
                      fontFamily: "Lora",
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text(
                  'Favorites',
                  style: TextStyle(
                    fontFamily: "Lora",
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.wb_sunny),
                title: Text(
                  'Sort',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Lora",
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                )),
          ]),
    );
  }
}
