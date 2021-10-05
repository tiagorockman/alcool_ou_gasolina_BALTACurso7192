import 'package:alcool_ou_gasolina/widgets/input.widget.dart';
import 'package:alcool_ou_gasolina/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCTRL = new MoneyMaskedTextController();
  var alcCTRL = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm(
      {@required this.gasCTRL,
      @required this.alcCTRL,
      @required this.busy,
      @required this.submitFunc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            ctrl: gasCTRL,
            label: "Gasolina",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            ctrl: alcCTRL,
            label: "Álcool",
          ),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(
            busy: busy, func: submitFunc, invert: false, text: "CALCULAR")
      ],
    );
  }
}
