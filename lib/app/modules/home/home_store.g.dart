// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$timeToJobAtom = Atom(name: 'HomeStoreBase.timeToJob');

  @override
  int get timeToJob {
    _$timeToJobAtom.reportRead();
    return super.timeToJob;
  }

  @override
  set timeToJob(int value) {
    _$timeToJobAtom.reportWrite(value, super.timeToJob, () {
      super.timeToJob = value;
    });
  }

  final _$timeToRestAtom = Atom(name: 'HomeStoreBase.timeToRest');

  @override
  int get timeToRest {
    _$timeToRestAtom.reportRead();
    return super.timeToRest;
  }

  @override
  set timeToRest(int value) {
    _$timeToRestAtom.reportWrite(value, super.timeToRest, () {
      super.timeToRest = value;
    });
  }

  @override
  String toString() {
    return '''
timeToJob: ${timeToJob},
timeToRest: ${timeToRest}
    ''';
  }
}
