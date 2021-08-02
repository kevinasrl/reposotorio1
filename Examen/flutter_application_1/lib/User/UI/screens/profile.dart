// ignore_for_file: prefer_const_constructors, unused_import, unused_field
import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/screens/login.dart';
import 'package:flutter_application_1/User/UI/widget/textimput.dart';

// ignore: use_key_in_widget_constructors
class Profile extends StatelessWidget {
  final _controllerName = TextEditingController();
  final _controllerHobbie = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 230.0,
            width: 250.0,
            margin: EdgeInsets.only(top: 00.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/meditacion2.jpg")),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ), //foto

          Container(
            height: 22.0,
            margin: EdgeInsets.only(top: 23.0),
            child: Text(
              "bienvenido al segundo dia de relajar tu mente",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
          ),

          Container(
            height: 22.0,
            margin: EdgeInsets.only(top: 23.0),
            child: Text(
              "pagina para la meditacion",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
          ), //Titul //Titulo
//Titul //Titulo

          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                height: 150.00,
                child: Image(
                  image: AssetImage("assets/image/iconos.jpg"),
                ),
              )
            ],
          ),
          Container(
            height: 30.0,
            margin: EdgeInsets.only(top: 30.0),
            child: BackButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
  }
}
