// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_num.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RandomNumber on _RandomNumberBase, Store {
  late final _$firstNumberAtom =
      Atom(name: '_RandomNumberBase.firstNumber', context: context);

  @override
  int? get firstNumber {
    _$firstNumberAtom.reportRead();
    return super.firstNumber;
  }

  @override
  set firstNumber(int? value) {
    _$firstNumberAtom.reportWrite(value, super.firstNumber, () {
      super.firstNumber = value;
    });
  }

  late final _$secondNumberAtom =
      Atom(name: '_RandomNumberBase.secondNumber', context: context);

  @override
  int? get secondNumber {
    _$secondNumberAtom.reportRead();
    return super.secondNumber;
  }

  @override
  set secondNumber(int? value) {
    _$secondNumberAtom.reportWrite(value, super.secondNumber, () {
      super.secondNumber = value;
    });
  }

  late final _$answerAtom =
      Atom(name: '_RandomNumberBase.answer', context: context);

  @override
  int? get answer {
    _$answerAtom.reportRead();
    return super.answer;
  }

  @override
  set answer(int? value) {
    _$answerAtom.reportWrite(value, super.answer, () {
      super.answer = value;
    });
  }

  late final _$_RandomNumberBaseActionController =
      ActionController(name: '_RandomNumberBase', context: context);

  @override
  void generateRandomNumbers() {
    final _$actionInfo = _$_RandomNumberBaseActionController.startAction(
        name: '_RandomNumberBase.generateRandomNumbers');
    try {
      return super.generateRandomNumbers();
    } finally {
      _$_RandomNumberBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
firstNumber: ${firstNumber},
secondNumber: ${secondNumber},
answer: ${answer}
    ''';
  }
}
