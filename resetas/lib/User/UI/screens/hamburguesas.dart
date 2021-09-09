import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Hamburgesa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('reseta hamburgesa'),
        ),
        body: ListView(
          children: <Widget>[
            miCardImage(),
            miCard(),
          ],
        ));
  }

  Card miCardImage() {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/hamburguesas.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Hamburgesas'),
          ),
          Icon(Icons.arrow_back, color: Colors.yellow),
        ],
      ),
    );
  }

  Card miCard() {
    return Card(
      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('reseta para preparar hamburgesas'),
            subtitle: Text(''),
            leading: Icon(Icons.home, color: Colors.yellow),
          ),
          Text(
            'En un bol mezclamos los ingredientes de las hamburguesas caseras. Los huevos, les darán un toque de cremosidad extra mientras que el pan rallado que, como ves es poca cantidad para que mantengan dicha cremosidad, darán un toquecito de crujir. El ajo y la cebolla, las pocho previamente, para que no tenga un sabor demasiado salvaje aunque, si lo prefieres, puedes añadirlo en crudo. Mezclamos con las manos limpias',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          Text(
            'Seccion vegetales',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red, fontSize: 10),
          ),
          Image(
            image: AssetImage('assets/vegetables.jpg'),
          ),
        ],
      ),
    );
  }
}
