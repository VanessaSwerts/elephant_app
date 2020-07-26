// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_elephant_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RandomElephantStore on _RandomElephantStoreBase, Store {
  final _$randomElephantListAtom =
      Atom(name: '_RandomElephantStoreBase.randomElephantList');

  @override
  ObservableList<ElephantsAPI> get randomElephantList {
    _$randomElephantListAtom.reportRead();
    return super.randomElephantList;
  }

  @override
  set randomElephantList(ObservableList<ElephantsAPI> value) {
    _$randomElephantListAtom.reportWrite(value, super.randomElephantList, () {
      super.randomElephantList = value;
    });
  }

  final _$randomElephantAtom =
      Atom(name: '_RandomElephantStoreBase.randomElephant');

  @override
  ElephantsAPI get randomElephant {
    _$randomElephantAtom.reportRead();
    return super.randomElephant;
  }

  @override
  set randomElephant(ElephantsAPI value) {
    _$randomElephantAtom.reportWrite(value, super.randomElephant, () {
      super.randomElephant = value;
    });
  }

  @override
  String toString() {
    return '''
randomElephantList: ${randomElephantList},
randomElephant: ${randomElephant}
    ''';
  }
}
