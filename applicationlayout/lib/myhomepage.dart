import 'package:flutter/material.dart';
import 'form.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Application"),
        leading: Icon(Icons.arrow_back),
        actions: <Widget>[
          Icon(Icons.more_vert),
        ],
        backgroundColor: Color.fromARGB(255, 98, 135, 141),
      ),
      body: MyForm(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: IconTheme(
                child: Icon(Icons.arrow_back_ios),
                data: IconThemeData(color: Colors.white),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconTheme(
                child: Icon(Icons.circle_outlined),
                data: IconThemeData(color: Colors.white),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconTheme(
                child: Icon(Icons.square_outlined),
                data: IconThemeData(color: Colors.white),
              ),
              label: "")
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
      ),
    );
  }
}
