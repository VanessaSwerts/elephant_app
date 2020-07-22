import 'dart:convert';
import 'package:elephant_app/conts/constsAPI.dart';
import 'package:elephant_app/models/elephantAPI.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'elephant_api_store.g.dart';

class ElephantStore = _ElephantStoreBase with _$ElephantStore;

abstract class _ElephantStoreBase with Store {
  @observable
  ElephantsAPI _elephantAPI;

  @computed
  ElephantsAPI get elephantAPI => _elephantAPI;

  @action
  fetchElephant() {
    _elephantAPI = null;
    loadElephantAPI().then((elephant) {
      _elephantAPI = elephant;
    });
  }

  Future<ElephantsAPI> loadElephantAPI() async {
    try {
      final responde = await http.get(ConstsAPI.urlElephantAPI);
      var decodeJson = jsonDecode(responde.body);
      return ElephantsAPI.fromJson(decodeJson);
    } catch (e) {
      print("Erro ao carregar API: $e");
      return null;
    }
  }
}
