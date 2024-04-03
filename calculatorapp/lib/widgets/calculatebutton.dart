import 'package:calculatorapp/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class calculate extends StatelessWidget {
  const calculate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setvalue("=");
      },
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 33, 159, 255),
            borderRadius: BorderRadius.circular(40)),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(fontSize: 49, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
