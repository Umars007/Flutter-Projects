import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final comcontroller = TextEditingController();
  setvalue(String value) {
    String str = comcontroller.text;
    switch (value) {
      case "C":
        comcontroller.clear();
        break;
      case "AC":
        comcontroller.text = str.substring(0, str.length - 1);
        break;
      case "X":
        comcontroller.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        comcontroller.text += value;
    }
    comcontroller.selection = TextSelection.fromPosition(
        TextPosition(offset: comcontroller.text.length));
  }

  compute() {
    String text = comcontroller.text;
    comcontroller.text = text.interpret().toString();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    comcontroller.dispose();
  }
}
