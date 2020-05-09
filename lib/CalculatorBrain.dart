import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
  final int height;
  final int weight;
  double _bmi;


  String calculateBMI(){
    _bmi= weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25) {
      return 'Overweight';
    }
    else if(_bmi>18.5) {
      return ('Normal');
    }
    else{
      return('Underweight');
    }
  }
  String getInterPretation(){
    if(_bmi>=25) {
      return 'You have a higher weight than normal , please exercise!';
    }
    else if(_bmi>18.5) {
      return ('Yeah! Your Body Weight is Normal');
    }
    else{
      return('Try to eat healthy foods and gain weight');
    }
  }
}