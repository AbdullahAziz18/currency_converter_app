import 'package:flutter/material.dart';

class CurrencyConvertMaterialPage extends StatefulWidget {
  const CurrencyConvertMaterialPage({super.key});

  @override
  State<CurrencyConvertMaterialPage> createState() =>
      _CurrencyConvertMaterialPage();
}

class _CurrencyConvertMaterialPage extends State<CurrencyConvertMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 288;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            'Currency Converter'),
        centerTitle: true,
        actions: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  textEditingController.clear();
                  result = 0;
                });
              },
              icon: const Icon(Icons.restart_alt_outlined),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PKR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ),
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 8, right: 8),
              child: ElevatedButton(
                onPressed: convert,
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
