import 'package:cached_network_image/cached_network_image.dart';
import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/models/elephantAPI.dart';
import 'package:elephant_app/store/search_elephant_store.dart';
import 'package:elephant_app/ui/search/widgets/radio_button_custom.dart';
import 'package:elephant_app/ui/search/widgets/text_search_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SearchElephantStore _searchElephantStore;
  ObservableList<ElephantsAPI> listAnswersElephant;

  @override
  void initState() {
    _searchElephantStore = GetIt.instance<SearchElephantStore>();
    _searchElephantStore.resetSearch();
    super.initState();
  }

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
                !_searchElephantStore.searched
                    ? Center(
                        heightFactor: 5,
                        child: Text(
                          "You haven't searched yet!",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontFamily: "Lora",
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                      )
                    : Expanded(child: Observer(
                        builder: (BuildContext context) {
                          if (_searchElephantStore.searchType == 0 &&
                              _searchElephantStore.searchListName.isNotEmpty) {
                            listAnswersElephant =
                                _searchElephantStore.searchListName;
                          } else if (_searchElephantStore.searchType == 1 &&
                              _searchElephantStore.searchListSex.isNotEmpty) {
                            listAnswersElephant =
                                _searchElephantStore.searchListSex;
                          } else if (_searchElephantStore.searchType == 2 &&
                              _searchElephantStore
                                  .searchListSpecie.isNotEmpty) {
                            listAnswersElephant =
                                _searchElephantStore.searchListSpecie;
                          } else {
                            listAnswersElephant =
                                ObservableList<ElephantsAPI>();
                          }

                          return listAnswersElephant.isEmpty
                              ? Center(
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white),
                                  ),
                                )
                              : ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: listAnswersElephant.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Card(
                                      elevation: 8.0,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 12.0,
                                        vertical: 8.0,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 10.0,
                                          ),
                                          leading: Container(
                                            padding: EdgeInsets.only(
                                              right: 15.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  width: 1.0,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  listAnswersElephant[index]
                                                      .image,
                                              placeholder: (context, url) =>
                                                  CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(Colors.white),
                                                strokeWidth: 3.0,
                                              ),
                                              imageBuilder:
                                                  (context, imageProvider) =>
                                                      CircleAvatar(
                                                backgroundImage: imageProvider,
                                                radius: 25,
                                              ),
                                            ),
                                          ),
                                          title: Row(
                                            children: <Widget>[
                                              Text(
                                                "Name: ",
                                                style: TextStyle(
                                                  color: ConstsApp
                                                      .secondaryGreenColor,
                                                  fontFamily: "Lora",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Text(
                                                listAnswersElephant[index].name,
                                                style: TextStyle(
                                                  color: ConstsApp
                                                      .primaryGreenColor,
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
                                                  color: ConstsApp
                                                      .secondaryGreenColor,
                                                  fontFamily: "Lora",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                listAnswersElephant[index]
                                                    .species,
                                                style: TextStyle(
                                                  color: ConstsApp
                                                      .primaryGreenColor,
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
                                );
                        },
                      )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
