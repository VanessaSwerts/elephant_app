import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/store/elephant_api_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class FloatingButtonDetail extends StatefulWidget {
  final int index;
  FloatingButtonDetail({this.index});

  @override
  _FloatingButtonDetailState createState() => _FloatingButtonDetailState();
}

class _FloatingButtonDetailState extends State<FloatingButtonDetail> {
  ElephantStore _elephantStore = GetIt.instance<ElephantStore>();

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 9.8,
      child: SizedBox(
        height: 60,
        width: 60,
        child: Observer(
          builder: (BuildContext context) {
            return FloatingActionButton(
              onPressed: () {
                _elephantStore.setFavElepahnt(widget.index);               
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                  color: ConstsApp.brownColor,
                ),
                child: Icon(
                  Icons.favorite,
                  color: _elephantStore.favoriteElephantList
                          .contains(_elephantStore.elephantList[widget.index])
                      ? Colors.red
                      : Colors.white,
                  size: 30,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
