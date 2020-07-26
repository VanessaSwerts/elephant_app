import 'package:elephant_app/conts/constsApp.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  String dropdownValue = 'Name';

  @override
  Widget build(BuildContext context) {
    double screeHeight = MediaQuery.of(context).size.height;
    double screewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstsApp.brownColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: Text(
            "Favorites",
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
                  height: 30.0,
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 32.0),
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.white, border: Border.all()),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['Name', 'Sex', 'Specie']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      color: ConstsApp.primaryGreenColor,
                                      fontFamily: "Lora",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      // padding: EdgeInsets.all(10),
                      addAutomaticKeepAlives: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 6.0,
                        mainAxisSpacing: 6.0,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            child: Card(
                              semanticContainer: true,
                              elevation: 8.0,
                              margin: EdgeInsets.symmetric(
                                horizontal: 12.0,
                                vertical: 8.0,
                              ),
                              child: Container(
                                  child: Column(
                                children: <Widget>[],
                              )),
                            ),
                          ),
                        );
                      },
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
