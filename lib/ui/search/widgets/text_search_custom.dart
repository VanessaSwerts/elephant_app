import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/store/search_elephant_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class CustomTextSearch extends StatefulWidget {
  @override
  _CustomTextSearchState createState() => _CustomTextSearchState();
}

class _CustomTextSearchState extends State<CustomTextSearch> {
  TextEditingController _searchQuery;
  SearchElephantStore _searchElephantStore;

  @override
  void initState() {
    _searchElephantStore = GetIt.instance<SearchElephantStore>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            border: Border.all(
              color: ConstsApp.primaryGreenColor,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Observer(
            builder: (BuildContext context) {
              return TextField(
                controller: _searchQuery,
                onChanged: _searchElephantStore.setSearch,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: ConstsApp.primaryGreenColor,
                    ),
                    onPressed: _searchElephantStore.searchField != ""
                        ? _searchElephantStore.setListSearch
                        : null,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
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
              );
            },
          )),
    );
  }
}
