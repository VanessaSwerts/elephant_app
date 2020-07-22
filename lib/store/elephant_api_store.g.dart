// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elephant_api_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ElephantStore on _ElephantStoreBase, Store {
  Computed<ElephantsAPI> _$elephantAPIComputed;

  @override
  ElephantsAPI get elephantAPI =>
      (_$elephantAPIComputed ??= Computed<ElephantsAPI>(() => super.elephantAPI,
              name: '_ElephantStoreBase.elephantAPI'))
          .value;

  final _$_elephantAPIAtom = Atom(name: '_ElephantStoreBase._elephantAPI');

  @override
  ElephantsAPI get _elephantAPI {
    _$_elephantAPIAtom.reportRead();
    return super._elephantAPI;
  }

  @override
  set _elephantAPI(ElephantsAPI value) {
    _$_elephantAPIAtom.reportWrite(value, super._elephantAPI, () {
      super._elephantAPI = value;
    });
  }

  final _$_ElephantStoreBaseActionController =
      ActionController(name: '_ElephantStoreBase');

  @override
  dynamic fetchElephant() {
    final _$actionInfo = _$_ElephantStoreBaseActionController.startAction(
        name: '_ElephantStoreBase.fetchElephant');
    try {
      return super.fetchElephant();
    } finally {
      _$_ElephantStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
elephantAPI: ${elephantAPI}
    ''';
  }
}
