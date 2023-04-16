// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'dart:math';
part 'random_num.g.dart';

class RandomNumber = _RandomNumberBase with _$RandomNumber;

abstract class _RandomNumberBase with Store {
  @observable
  int? firstNumber;

  @observable
  int? secondNumber;

  @observable
  int? answer;

  @action
  void generateRandomNumbers() {
    firstNumber = Random().nextInt(1000);
    secondNumber = Random().nextInt(1000);
    answer = (firstNumber! + secondNumber!);
  }
}
