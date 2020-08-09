// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_elephant_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RandomElephantStore on _RandomElephantStoreBase, Store {
  Computed<ElephantsAPI> _$randomElephantComputed;

  @override
  ElephantsAPI get randomElephant => (_$randomElephantComputed ??=
          Computed<ElephantsAPI>(() => super.randomElephant,
              name: '_RandomElephantStoreBase.randomElephant'))
      .value;

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

  final _$_randomElephantAtom =
      Atom(name: '_RandomElephantStoreBase._randomElephant');

  @override
  ElephantsAPI get _randomElephant {
    _$_randomElephantAtom.reportRead();
    return super._randomElephant;
  }

  @override
  set _randomElephant(ElephantsAPI value) {
    _$_randomElephantAtom.reportWrite(value, super._randomElephant, () {
      super._randomElephant = value;
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
