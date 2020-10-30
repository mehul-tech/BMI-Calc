import 'dart:math';
import 'main.dart';

class calculate{

  int weight;
  int height;
  double _bmi;

  calculate({this.height, this.weight});

  // ignore: non_constant_identifier_names
  String BMI(){
    _bmi = weight/(pow(height/100, 2));
    return _bmi.toStringAsFixed(2);
  }

  String getInterpretation(){
    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi<=17){
      return 'BelowWeight';
    }else{
      return 'Normal';
    }
  }

  String getFeedback(){
    if(_bmi>=25){
      return 'You are overweighted.... You have to work hard';
    }else if(_bmi<=17){
      return 'Your weight is below normal weight.....you have to be a bit lazy....';
    }else{
      return 'You are fit..... Continue to work as before....';
    }
  }
}