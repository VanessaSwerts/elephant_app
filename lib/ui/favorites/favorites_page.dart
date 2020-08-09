import 'package:animations/animations.dart';
import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/ui/details/elephant_details.dart';
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
                      padding: EdgeInsets.all(12),
                      addAutomaticKeepAlives: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.8,
                        crossAxisCount: 2,
                        crossAxisSpacing: 6.0,
                        mainAxisSpacing: 6.0,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return OpenContainer(
                          transitionDuration: Duration(milliseconds: 1500),
                          closedBuilder:
                              (BuildContext c, VoidCallback action) => Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 115,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ConstsApp.background_home,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  title: Row(
                                    children: <Widget>[
                                      Text(
                                        "elephant name ",
                                        style: TextStyle(
                                          color: ConstsApp.primaryGreenColor,
                                          fontFamily: "Lora",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Align(
                                        child: Icon(
                                          Icons.favorite,
                                          color: ConstsApp.primaryGreenColor,
                                        ),
                                        alignment: Alignment.topRight,
                                      ),
                                    ],
                                  ),
                                  subtitle: Text(
                                    "elephant specie ",
                                    style: TextStyle(
                                      color: ConstsApp.primaryGreenColor,
                                      fontFamily: "Lora",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          openBuilder: (BuildContext c, VoidCallback action) =>
                              ElephantDetail(),
                          tappable: true,
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
