import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/store/random_elephant_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';
import 'package:elephant_app/conts/routes.dart';
import 'package:get_it/get_it.dart';

class SortElephantPage extends StatefulWidget {
  @override
  _SortElephantPageState createState() => _SortElephantPageState();
}

class _SortElephantPageState extends State<SortElephantPage> {
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
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: appBarPhone + 16,
                  ),
                  child: Text(
                    "Elephant of the day",
                    style: TextStyle(
                      color: ConstsApp.primaryGreenColor,
                      fontFamily: "Lora",
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: ProgressButton(
                    defaultWidget: Text(
                      'Sort',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lora",
                        fontWeight: FontWeight.w500,
                        fontSize: 27,
                      ),
                    ),
                    progressWidget: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.white)),
                    color: ConstsApp.primaryGreenColor,
                    width: 150,
                    height: 50,
                    onPressed: () async {
                      await Future.delayed(
                          Duration(milliseconds: 3000),
                          () => _randomElephantStore
                                  .loadRandomElephantAPI()
                                  .then((random) {
                                Navigator.pushNamed(context, yourElephantPage);
                              }));
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
