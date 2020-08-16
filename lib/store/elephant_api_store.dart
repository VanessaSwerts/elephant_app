import 'dart:convert';
import 'package:elephant_app/conts/constsAPI.dart';
import 'package:elephant_app/models/elephantAPI.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'elephant_api_store.g.dart';

class ElephantStore = _ElephantStoreBase with _$ElephantStore;

abstract class _ElephantStoreBase with Store {
  List<String> listName = List();
  List<String> listSex = List();
  List<String> listSpecie = List();

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

  void setLists() async {
    for (int i = 0; i < elephantList.length; i++) {
      listName.add(elephantList[i].name);

      if (!listSpecie.contains(elephantList[i].species))
        listSpecie.add(elephantList[i].species);

      if (!listSex.contains(elephantList[i].sex))
        listSex.add(elephantList[i].sex);
    }

    print(listName);
    print(listSpecie);
    print(listSex);
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
    setLists();
    return elephantList;
  }
}
