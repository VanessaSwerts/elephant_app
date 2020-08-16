import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/store/search_elephant_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class CustomRadioButton extends StatefulWidget {
  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
   SearchElephantStore _searchElephantStore;

  @override
  void initState() {
    _searchElephantStore = GetIt.instance<SearchElephantStore>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 30,
            height: 30,
            child: Observer(builder: (_) {
              return Radio(
                  value: 0,
                  groupValue: _searchElephantStore.searchType,
                  activeColor: ConstsApp.primaryGreenColor,
                  onChanged: (index) {
                    _searchElephantStore.setSearchType(0);
                  });
            }),
          ),
          Text(
            "Name",
            style: TextStyle(
              color: ConstsApp.primaryGreenColor,
              fontFamily: "Lora",
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 30,
            height: 30,
            child: Observer(builder: (_) {
              return Radio(
                value: 1,
                groupValue: _searchElephantStore.searchType,
                activeColor: ConstsApp.primaryGreenColor,
                onChanged: (index) {
                  _searchElephantStore.setSearchType(1);
                },
              );
            }),
          ),
          Text(
            "Sex",
            style: TextStyle(
              color: ConstsApp.primaryGreenColor,
              fontFamily: "Lora",
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 30,
            height: 30,
            child: Observer(builder: (_) {
              return Radio(
                value: 2,
                groupValue: _searchElephantStore.searchType,
                activeColor: ConstsApp.primaryGreenColor,
                onChanged: (index) {
                  _searchElephantStore.setSearchType(2);
                },
              );
            }),
          ),
          Text(
            "Specie",
            style: TextStyle(
              color: ConstsApp.primaryGreenColor,
              fontFamily: "Lora",
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
