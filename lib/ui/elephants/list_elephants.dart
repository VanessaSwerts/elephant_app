import 'package:cached_network_image/cached_network_image.dart';
import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/store/elephant_api_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class ListElephants extends StatefulWidget {
  @override
  _ListElephantsState createState() => _ListElephantsState();
}

class _ListElephantsState extends State<ListElephants> {
  ElephantStore _elephantStore;
  int _valueDropBox = 0;

  @override
  void initState() {
    _elephantStore = GetIt.instance<ElephantStore>();
    getList();
    super.initState();
  }

  void getList() async {
    if (_elephantStore.elephantList.isEmpty)
      await _elephantStore.loadElephantAPI();
  }

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
            "All Elephants",
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
                    Container(
                      height: 25,
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all()),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            value: _valueDropBox,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Order by",
                                  style: TextStyle(
                                    color: ConstsApp.primaryGreenColor,
                                    fontFamily: "Lora",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                value: 0,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                    color: ConstsApp.primaryGreenColor,
                                    fontFamily: "Lora",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Sex",
                                  style: TextStyle(
                                    color: ConstsApp.primaryGreenColor,
                                    fontFamily: "Lora",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Specie",
                                  style: TextStyle(
                                    color: ConstsApp.primaryGreenColor,
                                    fontFamily: "Lora",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                value: 3,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                _valueDropBox = value;
                              });
                            }),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Observer(
                    builder: (BuildContext context) {
                      return _elephantStore.elephantList.isEmpty
                          ? Center(
                              child: CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                            )
                          : GridView.builder(
                              physics: BouncingScrollPhysics(),
                              padding: EdgeInsets.all(10),
                              addAutomaticKeepAlives: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 8.0,
                                mainAxisSpacing: 8.0,
                              ),
                              itemCount: _elephantStore.elephantList.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 65,
                                    height: 65,
                                    color: ConstsApp.opacityGreenColor,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CachedNetworkImage(
                                            imageUrl: _elephantStore
                                                .elephantList[index].image,
                                            placeholder: (context, url) =>
                                                CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      Colors.white),
                                              strokeWidth: 3.0,
                                            ),
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 60,
                                              height: 60,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _elephantStore
                                              .elephantList[index].name,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Lora",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
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
