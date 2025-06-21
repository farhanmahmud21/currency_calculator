import 'package:flutter/material.dart';

void main() {
  runApp(CurrencyCalculator());
}

class CurrencyCalculator extends StatefulWidget {
  const CurrencyCalculator({super.key});

  @override
  State<CurrencyCalculator> createState() => _CurrencyCalculatorState();
}

class _CurrencyCalculatorState extends State<CurrencyCalculator> {
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2),
      borderRadius: BorderRadius.circular(10),
    );

    TextEditingController currencyController = TextEditingController();
    var result = 0;

    return MaterialApp(
      title: 'Currency Calculator',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        // appBar: AppBar(
        //   title: Text('Currency Calculator'),
        //   backgroundColor: const Color.fromARGB(255, 136, 159, 170),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currencyController.text.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),

                child: TextField(
                  controller: currencyController,

                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                    signed: true,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.currency_exchange_rounded),
                    hintText: 'Please enter your usd value to convert',
                    filled: true,
                    fillColor: Colors.white,

                    focusedBorder: border,
                    enabled: true,
                    enabledBorder: border,
                    labelText: 'USD to BDT',
                    labelStyle: TextStyle(
                      //backgroundColor: Colors.black,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  print(currencyController.text);
                },
                child: Text(
                  'Convert',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
