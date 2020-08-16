import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/ui/home/widgets/radio_button_custom.dart';
import 'package:elephant_app/ui/search/widgets/text_search_custom.dart';
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
                CustomTextSearch(),
                CustomRadioButton(),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 8.0,
                        margin: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 8.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              right: BorderSide(
                                width: 40.0,
                                color: ConstsApp.opacityGreenColor,
                              ),
                            ),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 10.0,
                            ),
                            leading: Container(
                              padding: EdgeInsets.only(
                                right: 12.0,
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 25,
                              ),
                            ),
                            title: Row(
                              children: <Widget>[
                                Text(
                                  "Name: ",
                                  style: TextStyle(
                                    color: ConstsApp.secondaryGreenColor,
                                    fontFamily: "Lora",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "elephant name ",
                                  style: TextStyle(
                                    color: ConstsApp.primaryGreenColor,
                                    fontFamily: "Lora",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Row(
                              children: <Widget>[
                                Text(
                                  "Specie: ",
                                  style: TextStyle(
                                    color: ConstsApp.secondaryGreenColor,
                                    fontFamily: "Lora",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "elephant specie ",
                                  style: TextStyle(
                                    color: ConstsApp.primaryGreenColor,
                                    fontFamily: "Lora",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
