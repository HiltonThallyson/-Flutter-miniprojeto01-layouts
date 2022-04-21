import 'package:flutter/material.dart';
import 'imcscreen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  _generateResult() {
    final _peso = double.parse(_weightController.text);
    final _altura = double.parse(_heightController.text);
    final _imc = _peso / (_altura * _altura);
    final _status;

    if (_imc < 18.5) {
      _status = Colors.blue;
    } else if (_imc < 25) {
      _status = Colors.green;
    } else if (_imc < 30) {
      _status = Colors.yellow[300];
    } else if (_imc < 35) {
      _status = Color.fromARGB(255, 243, 163, 25);
    } else if (_imc < 40) {
      _status = Colors.orange[800];
    } else {
      _status = Colors.red[700];
    }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ImcScreen(
                  peso: _peso,
                  altura: _altura,
                  imc: _imc,
                  status: _status,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
                controller: _weightController,
                decoration: InputDecoration(
                    hintText: 'Insira seu peso em Kg', label: Text('Peso'))),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _heightController,
              decoration: InputDecoration(
                  hintText: 'Insira sua altura em metros',
                  label: Text('Altura')),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              _generateResult();
            },
            child: Text('Calcular IMC'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
            ),
          )
        ],
      )),
    );
  }
}
