import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        backgroundColor: Colors.blueGrey,
      ),
      body: Scaffold(
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.black,
            ),
            height: 500,
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Seu IMC é de ${imc.toStringAsFixed(2)}",
                    style: TextStyle(color: status, fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: InteractiveViewer(
                    minScale: 0.1,
                    maxScale: 2,
                    child: Image(
                        width: 450,
                        image: NetworkImage(
                            'https://www.plasticadosonho.com.br/wp-content/webp-express/webp-images/uploads/2017/12/blog-06-como-calcular-o-imc.jpg.webp')),
                  ),
                  //child: Image(image: AssetImage('assets/imgs/imc.jpg')),
                )
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
