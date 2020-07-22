import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
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
            "Search",
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
              ConstsApp.background_list,
              height: screeHeight,
              width: screewidth,
              fit: BoxFit.cover,
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: ConstsApp.primaryGreenColor,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: ConstsApp.primaryGreenColor,
                          ),
                          onPressed: null,
                        ),
                      ),
                      style: TextStyle(
                        color: ConstsApp.primaryGreenColor,
                        fontFamily: "Lora",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      cursorColor: ConstsApp.primaryGreenColor,
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lora",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sex",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lora",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Specie",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lora",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
