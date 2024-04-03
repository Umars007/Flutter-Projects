import 'package:calculatorapp/consants/colors.dart';
import 'package:calculatorapp/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    this.textcolor = Colors.white,
  });
  final String label;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setvalue(label);
      },
      child: Material(
        elevation: 3,
        color: Appcolors.secondary2color,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: Appcolors.secondary2color,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
