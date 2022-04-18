import 'package:flutter/material.dart';

class ImcScreen extends StatelessWidget {
  double peso;
  double altura;
  double imc;
  Color status;

  ImcScreen(
      {@required this.peso = 0.0,
      @required this.altura = 0.0,
      @required this.imc = 0.0,
      @required this.status = Colors.white});

  @override
  Widget build(BuildContext context) {
    _return() {
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: _return, child: Icon(Icons.arrow_back)),
        title: Text('Resultado'),
        centerTitle: true,
      ),
      body: Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)),
            height: 250,
            width: 300,
            child: Center(
              child: Text(
                "Seu IMC é de ${imc.toStringAsFixed(2)}",
                style: TextStyle(color: status, fontSize: 24),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
