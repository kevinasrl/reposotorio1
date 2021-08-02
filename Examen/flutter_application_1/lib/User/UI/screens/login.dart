// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors, must_be_immutable, unused_field, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/screens/profile.dart';
import 'package:flutter_application_1/User/UI/widget/textimput.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/User/UI/widget/googleButton.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:flutter_application_1/User/BLOC/blocUser.dart';

class Login extends StatelessWidget {
  late BlocUser blocUser;

  final _controllerUsername = TextEditingController();
  final _controllerHobbie = TextEditingController();

  @override
  Widget build(BuildContext context) {
    blocUser = BlocProvider.of(context);
    return __controlSession();
  }

  Widget __controlSession() {
    return StreamBuilder(
        stream: blocUser.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return loginApp();
          } else {
            return Profile();
          }
        });
  }

  Widget loginApp() {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 15.0),
              child: Text(
                "pagina para Meditacion",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ), //Titulo

            Container(
              height: 250.0,
              width: 300.0,
              margin: EdgeInsets.only(top: 25.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/image/meditacion1.jpg"),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                shape: BoxShape.rectangle,
              ),
            ), //logo

            Container(
              height: 30.0,
              margin: EdgeInsets.only(top: 30.0),
              child: Text(
                "Esta pagina es para poder relajarse",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              height: 22.0,
              margin: EdgeInsets.only(top: 23.0),
              child: Text(
                "y poder tener mas salud",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ), //Titul //Titulo

            Container(
              child: Center(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 50.0,
                  onPressed: () {},
                  color: Colors.pink,
                  child: Text('Get started',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),

            GoogleButton(
                text: "Get started",
                onPressed: () {
                  blocUser.singIn().then((UserCredential user) =>
                      print("Usted se ha autenticado como ${user.user}"));
                },
                heightC: 35,
                widthC: 80),

            GoogleButton(
                text: "Login out", onPressed: () {}, heightC: 35, widthC: 80)
          ],
        ),
      ),
    );
  }
}
