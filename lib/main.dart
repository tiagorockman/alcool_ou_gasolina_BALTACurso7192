import 'package:alcool_ou_gasolina/widgets/input.widget.dart';
import 'package:alcool_ou_gasolina/widgets/loading-button.widget.dart';
import 'package:alcool_ou_gasolina/widgets/logo.widget.dart';
import 'package:alcool_ou_gasolina/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasController = new MoneyMaskedTextController();
  var _alcController = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Success(result: "Compensa utilizar X", reset: () {}),
          Input(
            ctrl: _gasController,
            label: "Gasolina",
          ),
          Input(
            ctrl: _alcController,
            label: "Álcool",
          ),
          LoadingButton(
              busy: false, func: () {}, invert: false, text: "CALCULAR")
        ],
      ),
    );
  }
}
