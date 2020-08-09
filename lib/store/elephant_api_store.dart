import 'dart:convert';
import 'package:elephant_app/conts/constsAPI.dart';
import 'package:elephant_app/models/elephantAPI.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'elephant_api_store.g.dart';

class ElephantStore = _ElephantStoreBase with _$ElephantStore;

abstract class _ElephantStoreBase with Store {
  @observable
  ObservableList<ElephantsAPI> elephantList = ObservableList<ElephantsAPI>();

  @observable
  ObservableList<ElephantsAPI> favoriteElephantList =
      ObservableList<ElephantsAPI>();

  @action
  setFavElepahnt(int index) {
    if (favoriteElephantList.isEmpty) {
      favoriteElephantList.add(elephantList[index]);
    } else if (!favoriteElephantList.contains(elephantList[index])) {
      favoriteElephantList.add(elephantList[index]);
    } else if (favoriteElephantList.contains(elephantList[index])) {
      favoriteElephantList.remove(elephantList[index]);
    }
  }

  int foundFavElephant(int index) {
    int indexElephant;

    if (elephantList.contains(favoriteElephantList[index])) {
      indexElephant = elephantList.indexOf(favoriteElephantList[index]);
    }
    return indexElephant;
  }

  Future<ObservableList<ElephantsAPI>> loadElephantAPI() async {
    final responseData = await http.get(ConstsAPI.urlElephantAPI);
    final data = jsonDecode(responseData.body);
    for (Map i in data) {
      if (ElephantsAPI.fromJson(i).name != null) {
        elephantList.add(ElephantsAPI.fromJson(i));
      }
    }
    return elephantList;
  }
}
