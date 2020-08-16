import 'package:elephant_app/conts/constsApp.dart';
import 'package:elephant_app/conts/routes.dart';
import 'package:elephant_app/store/elephant_api_store.dart';
import 'package:elephant_app/store/random_elephant_store.dart';
import 'package:elephant_app/store/search_elephant_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getit = GetIt.instance;
  getit.registerSingleton<ElephantStore>(ElephantStore());
  getit.registerSingleton<RandomElephantStore>(RandomElephantStore());
  getit.registerSingleton<SearchElephantStore>(SearchElephantStore());
  
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
