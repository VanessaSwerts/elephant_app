import 'package:cached_network_image/cached_network_image.dart';
import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/models/elephantAPI.dart';
import 'package:elephant_app/store/random_elephant_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';
import 'package:get_it/get_it.dart';
import 'package:elephant_app/conts/routes.dart';

class YourElephantPage extends StatefulWidget {
  @override
  _YourElephantPageState createState() => _YourElephantPageState();
}

class _YourElephantPageState extends State<YourElephantPage> {
  RandomElephantStore _randomElephantStore;

  @override
  void initState() {
    _randomElephantStore = GetIt.instance<RandomElephantStore>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screeHeight = MediaQuery.of(context).size.height;
    double screewidth = MediaQuery.of(context).size.width;
    double appBarPhone = MediaQuery.of(context).padding.top;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstsApp.brownColor,
      body: SafeArea(
        top: false,
        child: Stack(
          children: <Widget>[
            Image.asset(
              ConstsApp.background_sort,
              height: screeHeight,
              width: screewidth,
              fit: BoxFit.cover,
              alignment: Alignment(-0.4, 0),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: appBarPhone + 24,
                  ),
                  child: Text(
                    "Your daily elephant",
                    style: TextStyle(
                      color: ConstsApp.primaryGreenColor,
                      fontFamily: "Lora",
                      fontWeight: FontWeight.w500,
                      fontSize: 27,
                    ),
                  ),
                ),
                Center(
                  heightFactor: 1.3,
                  child: Container(
                    width: 320,
                    height: 190,
                    child: Observer(
                      builder: (BuildContext context) {
                        ElephantsAPI myRandomElephant =
                            _randomElephantStore.randomElephant;
                        return Card(
                          margin: EdgeInsets.all(10),
                          color: ConstsApp.opacityGreenColor,
                          child: myRandomElephant == null
                              ? Center(
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white),
                                    strokeWidth: 5.0,
                                  ),
                                )
                              : SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 48,
                                          child: CachedNetworkImage(
                                              imageUrl: myRandomElephant.image,
                                              placeholder: (context, url) =>
                                                  CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            Colors.white),
                                                    strokeWidth: 3.0,
                                                  ),
                                              imageBuilder:
                                                  (context, imageProvider) =>
                                                      CircleAvatar(
                                                        backgroundImage:
                                                            imageProvider,
                                                        radius: 45,
                                                      )),
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        padding: EdgeInsets.only(right: 5.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              myRandomElephant.name
                                                  .replaceAll(" ", "\n"),
                                              maxLines: 2,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Lora",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            SizedBox(
                                              width: 180,
                                              child: Text(
                                                myRandomElephant.note,
                                                maxLines: 6,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Lora",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        );
                      },
                    ),
                  ),
                ),
                ProgressButton(
                  defaultWidget: Text(
                    'Back Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Lora",
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  progressWidget: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                  color: ConstsApp.primaryGreenColor,
                  width: 150,
                  height: 50,
                  onPressed: () async {
                    await Future.delayed(
                        Duration(milliseconds: 1500), () => 30);
                    Navigator.pushReplacementNamed(context, home);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
