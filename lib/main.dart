import 'package:flutter/material.dart';

void main() {
  runApp(CurrencyCalculator());
}

class CurrencyCalculator extends StatelessWidget {
  const CurrencyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Calculator',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title: Text('Currency Calculator')),
        body: Column(children: [Text('0'), TextField()]),
      ),
    );
  }
}
