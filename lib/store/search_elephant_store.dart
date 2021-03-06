import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:elephant_app/conts/constsAPI.dart';
import 'package:elephant_app/models/elephantAPI.dart';
import 'package:mobx/mobx.dart';
part 'search_elephant_store.g.dart';

class SearchElephantStore = _SearchElephantStoreBase with _$SearchElephantStore;

abstract class _SearchElephantStoreBase with Store {
  @observable
  int _searchType = 0;

  @observable
  bool searched = false;

  @computed
  int get searchType => _searchType;

  @observable
  ElephantsAPI searchNameElephant;

  @observable
  ObservableList<ElephantsAPI> searchListName;

  @observable
  ObservableList<ElephantsAPI> searchListSex;

  @observable
  ObservableList<ElephantsAPI> searchListSpecie;

  @action
  setSearchType(int value) {
    _searchType = value;
  }

  @action
  setSearched(bool value) {
    searched = value;
  }

  @observable
  String searchField = "";

  @action
  void setSearch(String textSearch) => searchField = textSearch.toLowerCase();

  void setListSearch() async {
    setSearched(true);
    switch (searchType) {
      case 0:
        await _searchNameURL(searchField);
        break;
      case 1:
        await _searchSexURL(searchField);
        break;
      case 2:
        await _searchSpecieURL(searchField);
        break;
      default:
        ObservableList<ElephantsAPI>();
    }
  }

  void resetSearch() {
    searchListName = ObservableList<ElephantsAPI>();
    searchListSex = ObservableList<ElephantsAPI>();
    searchListSpecie = ObservableList<ElephantsAPI>();
    setSearch('');
    setSearched(false);
  }

  Future<ElephantsAPI> _searchNameURL(String searchName) async {
    searchListName = ObservableList<ElephantsAPI>();
    final responseData =
        await http.get(ConstsAPI.urlSearchByName + "/$searchName");
    final data = jsonDecode(responseData.body);
    searchNameElephant = ElephantsAPI.fromJson(data);
    searchListName.add(searchNameElephant);

    return searchNameElephant;
  }

  Future<ObservableList<ElephantsAPI>> _searchSexURL(String searchSex) async {
    searchListSex = ObservableList<ElephantsAPI>();
    final responseData =
        await http.get(ConstsAPI.urlSearchBySex + "/$searchSex");
    final data = jsonDecode(responseData.body);
    for (Map i in data) {
      if (ElephantsAPI.fromJson(i).sex != null) {
        searchListSex.add(ElephantsAPI.fromJson(i));
      }
    }
    return searchListSex;
  }

  Future<ObservableList<ElephantsAPI>> _searchSpecieURL(
      String searchSpecie) async {
    searchListSpecie = ObservableList<ElephantsAPI>();
    final responseData =
        await http.get(ConstsAPI.urlSearchBySpecie + "/$searchSpecie");
    final data = jsonDecode(responseData.body);
    for (Map i in data) {
      if (ElephantsAPI.fromJson(i).species != null) {
        searchListSpecie.add(ElephantsAPI.fromJson(i));
      }
    }
    return searchListSpecie;
  }
}
