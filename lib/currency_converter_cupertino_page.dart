import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
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
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CupertinoColors.white,
            ),
            'Currency Converter'),
      ),
      backgroundColor: CupertinoColors.systemGrey3,
      child: Center(
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
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                placeholder: 'Please enter the value in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 8, right: 8),
              child: CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
