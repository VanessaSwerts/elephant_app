import 'package:cached_network_image/cached_network_image.dart';
import 'package:elephant_app/store/elephant_api_store.dart';
import 'package:elephant_app/utils/format.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HeaderDetails extends StatefulWidget {
  final int index; 
  HeaderDetails({this.index});
  
  @override
  _HeaderDetailsState createState() => _HeaderDetailsState();
}

class _HeaderDetailsState extends State<HeaderDetails> {
  ElephantStore _elephantStore = GetIt.instance<ElephantStore>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 12,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 70,
            child: CachedNetworkImage(
                imageUrl: _elephantStore.elephantList[widget.index].image,
                placeholder: (context, url) => CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      strokeWidth: 3.0,
                    ),
                imageBuilder: (context, imageProvider) => CircleAvatar(
                      backgroundImage: imageProvider,
                      radius: 70,
                    )),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              _elephantStore.elephantList[widget.index].name,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Lora",
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          Text(
            formatDate(
              yearB: _elephantStore.elephantList[widget.index].dob,
              yearD: _elephantStore.elephantList[widget.index].dod,
            ),
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lora",
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
