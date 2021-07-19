// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListState on _ListState, Store {
  final _$listAtom = Atom(name: '_ListState.list');

  @override
  ObservableList<ItemData> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<ItemData> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$_ListStateActionController = ActionController(name: '_ListState');

  @override
  void add() {
    final _$actionInfo =
        _$_ListStateActionController.startAction(name: '_ListState.add');
    try {
      return super.add();
    } finally {
      _$_ListStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(int index) {
    final _$actionInfo =
        _$_ListStateActionController.startAction(name: '_ListState.remove');
    try {
      return super.remove(index);
    } finally {
      _$_ListStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list}
    ''';
  }
}
