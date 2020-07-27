import 'package:elephant_app/ui/details/elephant_details.dart';
import 'package:elephant_app/ui/elephants/list_elephants.dart';
import 'package:elephant_app/ui/favorites/favorites_page.dart';
import 'package:elephant_app/ui/home/home_page.dart';
import 'package:elephant_app/ui/search/search_page.dart';
import 'package:elephant_app/ui/sortElephant.dart/sortElephant_page.dart';
import 'package:elephant_app/ui/sortElephant.dart/yourElephant_page.dart';
import 'package:elephant_app/ui/splash/splash.dart';
import 'package:flutter/material.dart';

const String splash = '/splash';
const String home = '/homePage';
const String listElephants = '/listElephants';
const String favoritesPage = '/favoritesPage';
const String searchPage = '/searchPage';
const String sortElephantPage = '/sortElephantPage';
const String yourElephantPage = '/yourElephantPage';
const String elephantDetail = '/elephantDetail';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => Splash());
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case listElephants:
        return MaterialPageRoute(builder: (_) => ListElephants());
      case favoritesPage:
        return MaterialPageRoute(builder: (_) => FavoritesPage());
      case searchPage:
        return MaterialPageRoute(builder: (_) => SearchPage());
      case sortElephantPage:
        return MaterialPageRoute(builder: (_) => SortElephantPage());
      case yourElephantPage:
        return MaterialPageRoute(builder: (_) => YourElephantPage());
      case elephantDetail:
        return MaterialPageRoute(builder: (_) => ElephantDetail());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
