import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({ required this.height,required this.weight});

  final int height;
  final int weight;
  double _bmi=0;
String calculateBMI (){
    _bmi= weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1); // we r just specifying the number of digits of that double

}
String getResult() {
  if(_bmi>25) { return 'OVERWEIGHT '; }
  else if ( _bmi > 18.5) {
    return 'NORMAL';
  } else {
    return 'UNDERWEIGHT';
  }

}
String getAdvice() {
  if(_bmi>25) { return 'Rak overweight kho, lazmk tejri chwiya ...'; }
else if ( _bmi > 18.5) {
  return 'F chbeb brother';
} else {
  return 'Rak Underweight kho, kol chwiya ...';
}

}














}