import 'dart:ffi';

import 'package:calculatorapp/consants/colors.dart';
import 'package:calculatorapp/consants/data.dart';
import 'package:calculatorapp/provider/cal_provider.dart';
import 'package:calculatorapp/widgets/calculatebutton.dart';
import 'package:calculatorapp/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home extends StatelessWidget {
  const home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.sizeOf(context).height;
    const Padding = EdgeInsets.symmetric(horizontal: 20, vertical: 30);
    const decoration = BoxDecoration(
      color: Appcolors.primarycolor,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
    );
    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Center(child: Text("Calculator")),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              CustomTextField(
                controller: provider.comcontroller,
              ),
              const Spacer(),
              Container(
                height: screenheight * 0.6,
                width: double.infinity,
                padding: Padding,
                decoration: decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonlist[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List.generate(4, (index) => buttonlist[index + 4]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          List.generate(4, (index) => buttonlist[index + 8]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    3, (index) => buttonlist[index + 12]),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    3, (index) => buttonlist[index + 15]),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const calculate()
                      ],
                    )
                  ],
                ),
              ),
            ],
          ));
    });
  }
}
