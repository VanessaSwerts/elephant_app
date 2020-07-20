import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/conts/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elephant App',
      theme: ThemeData(
        primaryColor: ConstsApp.primaryGreenColor,
      ),
      onGenerateRoute: Router.generateRoute,
      initialRoute: splash,
    ),
  );
}
