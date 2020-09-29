import 'package:flutter/material.dart';
import 'package:fuel_consumption_calculator/components/bodyCost.dart';
import 'package:fuel_consumption_calculator/components/customAppBar.dart';

class CostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(context),
      body: BodyCost(),
    );
  }
}
