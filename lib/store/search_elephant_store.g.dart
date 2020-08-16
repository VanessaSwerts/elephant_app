// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_elephant_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchElephantStore on _SearchElephantStoreBase, Store {
  Computed<int> _$searchTypeComputed;

  @override
  int get searchType =>
      (_$searchTypeComputed ??= Computed<int>(() => super.searchType,
              name: '_SearchElephantStoreBase.searchType'))
          .value;

  final _$_searchTypeAtom = Atom(name: '_SearchElephantStoreBase._searchType');

  @override
  int get _searchType {
    _$_searchTypeAtom.reportRead();
    return super._searchType;
  }

  @override
  set _searchType(int value) {
    _$_searchTypeAtom.reportWrite(value, super._searchType, () {
      super._searchType = value;
    });
  }

  final _$searchNameElephantAtom =
      Atom(name: '_SearchElephantStoreBase.searchNameElephant');

  @override
  ElephantsAPI get searchNameElephant {
    _$searchNameElephantAtom.reportRead();
    return super.searchNameElephant;
  }

  @override
  set searchNameElephant(ElephantsAPI value) {
    _$searchNameElephantAtom.reportWrite(value, super.searchNameElephant, () {
      super.searchNameElephant = value;
    });
  }

  final _$searchListSexAtom =
      Atom(name: '_SearchElephantStoreBase.searchListSex');

  @override
  ObservableList<ElephantsAPI> get searchListSex {
    _$searchListSexAtom.reportRead();
    return super.searchListSex;
  }

  @override
  set searchListSex(ObservableList<ElephantsAPI> value) {
    _$searchListSexAtom.reportWrite(value, super.searchListSex, () {
      super.searchListSex = value;
    });
  }

  final _$searchListSpecieAtom =
      Atom(name: '_SearchElephantStoreBase.searchListSpecie');

  @override
  ObservableList<ElephantsAPI> get searchListSpecie {
    _$searchListSpecieAtom.reportRead();
    return super.searchListSpecie;
  }

  @override
  set searchListSpecie(ObservableList<ElephantsAPI> value) {
    _$searchListSpecieAtom.reportWrite(value, super.searchListSpecie, () {
      super.searchListSpecie = value;
    });
  }

  final _$searchFieldAtom = Atom(name: '_SearchElephantStoreBase.searchField');

  @override
  String get searchField {
    _$searchFieldAtom.reportRead();
    return super.searchField;
  }

  @override
  set searchField(String value) {
    _$searchFieldAtom.reportWrite(value, super.searchField, () {
      super.searchField = value;
    });
  }

  final _$_SearchElephantStoreBaseActionController =
      ActionController(name: '_SearchElephantStoreBase');

  @override
  dynamic setSearchType(int value) {
    final _$actionInfo = _$_SearchElephantStoreBaseActionController.startAction(
        name: '_SearchElephantStoreBase.setSearchType');
    try {
      return super.setSearchType(value);
    } finally {
      _$_SearchElephantStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearch(String textSearch) {
    final _$actionInfo = _$_SearchElephantStoreBaseActionController.startAction(
        name: '_SearchElephantStoreBase.setSearch');
    try {
      return super.setSearch(textSearch);
    } finally {
      _$_SearchElephantStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchNameElephant: ${searchNameElephant},
searchListSex: ${searchListSex},
searchListSpecie: ${searchListSpecie},
searchField: ${searchField},
searchType: ${searchType}
    ''';
  }
}
