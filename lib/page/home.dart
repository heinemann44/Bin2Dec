import 'package:bin_2_dec/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Home extends StatelessWidget {
  final Controller _controller = Controller();
  final List<String> _notBinaryNumber = [
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bin2Dec"),
      ),
      body: this._buildContent(),
    );
  }

  Widget _buildContent() {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              onChanged: this._controller.convertNumber,
              autovalidate: true,
              validator: this._validateOnlyBinaryNumbers,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Binary number"),
            ),
          ),
          Observer(
            builder: (_) => Text(
              "Decimal: ${this._controller.decimal}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }

  String _validateOnlyBinaryNumbers(String number) {
    for (String numberNotBinary in this._notBinaryNumber) {
      if (number.contains(numberNotBinary)) {
        return "Only binary numbers";
      }
    }

    return null;
  }
}
