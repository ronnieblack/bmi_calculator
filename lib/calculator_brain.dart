import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInter() {
    if (_bmi >= 25) {
      return 'Your results indicate that you shoudl work out more!';
    } else if (_bmi > 18.5) {
      return 'Your results indicate that you should work out the same amout.';
    } else {
      return 'Your results indicate that you should Eat, Eat, Eat!';
    }
  }
}
