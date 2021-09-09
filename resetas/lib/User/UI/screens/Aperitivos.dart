import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Aperitivos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('reseta aperitivos'),
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
            image: AssetImage('assets/aperitivos-.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('aperitivos'),
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
            title: Text('reseta para preparar aperitivos'),
            subtitle: Text(''),
            leading: Icon(Icons.home, color: Colors.yellow),
          ),
          Text(
            'Ingredientes para cuatro personas: 20 sardinas frescas pequeñas, 6 láminas de masa filo, 250 g de queso crema, 40 g de mantequilla, 15 g de piñones tostados',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          Text(
            'pedimos a nuestro pescadero que nos limpie de la espina central y descabeze las sardinillas. Lavarlas en casa y secarlas con papel de cocina. Colocarles una hojita de menta fresca en su interior, salpimentarlas. En un bol mezclamos el queso crema, con dos hojas de menta picada, el aceite de oliva,',
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
