import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:elephant_app/conts/constsAPI.dart';
import 'package:elephant_app/models/elephantAPI.dart';
import 'package:mobx/mobx.dart';

part 'random_elephant_store.g.dart';

class RandomElephantStore = _RandomElephantStoreBase with _$RandomElephantStore;

abstract class _RandomElephantStoreBase with Store {
  @observable
  ObservableList<ElephantsAPI> randomElephantList =
      ObservableList<ElephantsAPI>();

  @observable
  ElephantsAPI randomElephant; 

  // @computed
  // ElephantsAPI get randomElephant => _randomElephant = randomElephantList[0];

  Future<ObservableList<ElephantsAPI>> loadRandomElephantAPI() async {
    final responseData = await http.get(ConstsAPI.urlRandomElephant);
    final data = jsonDecode(responseData.body);
    print(data);
    for (Map i in data) {
      if (ElephantsAPI.fromJson(i).name != null) {
        randomElephantList.add(ElephantsAPI.fromJson(i));
        print(ElephantsAPI.fromJson(i));
      } else {
        await loadRandomElephantAPI();
      }
    }
    randomElephant = randomElephantList[0];
    return randomElephantList;
  }
}
