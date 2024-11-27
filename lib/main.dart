import 'package:currency_app/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';

import './currency_converter_material_page.dart'; //relative importing
import 'package:flutter/material.dart'; //package importing

void main() {
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
