// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elephant_api_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ElephantStore on _ElephantStoreBase, Store {
  final _$elephantListAtom = Atom(name: '_ElephantStoreBase.elephantList');

  @override
  ObservableList<ElephantsAPI> get elephantList {
    _$elephantListAtom.reportRead();
    return super.elephantList;
  }

  @override
  set elephantList(ObservableList<ElephantsAPI> value) {
    _$elephantListAtom.reportWrite(value, super.elephantList, () {
      super.elephantList = value;
    });
  }

  final _$favoriteElephantListAtom =
      Atom(name: '_ElephantStoreBase.favoriteElephantList');

  @override
  ObservableList<ElephantsAPI> get favoriteElephantList {
    _$favoriteElephantListAtom.reportRead();
    return super.favoriteElephantList;
  }

  @override
  set favoriteElephantList(ObservableList<ElephantsAPI> value) {
    _$favoriteElephantListAtom.reportWrite(value, super.favoriteElephantList,
        () {
      super.favoriteElephantList = value;
    });
  }

  final _$_ElephantStoreBaseActionController =
      ActionController(name: '_ElephantStoreBase');

  @override
  dynamic setFavElepahnt(int index) {
    final _$actionInfo = _$_ElephantStoreBaseActionController.startAction(
        name: '_ElephantStoreBase.setFavElepahnt');
    try {
      return super.setFavElepahnt(index);
    } finally {
      _$_ElephantStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
elephantList: ${elephantList},
favoriteElephantList: ${favoriteElephantList}
    ''';
  }
}
