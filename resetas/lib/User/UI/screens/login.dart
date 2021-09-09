import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:resetas/User/UI/screens/Aperitivos.dart';
import 'package:resetas/User/UI/screens/profile.dart';
import 'package:resetas/User/UI/widget/FacebookButton.dart';
import 'package:resetas/User/UI/widget/googleButton.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:resetas/User/BLOC/blocUser.dart';
import 'package:resetas/User/UI/screens/hamburguesas.dart';

class Login extends StatelessWidget {
  late BlocUser blocUser;

  final _controllerUsername = TextEditingController();
  final _controllerHobbie = TextEditingController();

  BuildContext get context => context;

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
            return Hamburgesa();
          }
        });
  }

  Widget loginApp() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 25.0,
              margin: EdgeInsets.only(top: 30.0),
              child: Text(
                "Resetas",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Icon(Icons.cake, size: 40.0, color: Colors.yellow),
            Container(
              height: 25.0,
              margin: EdgeInsets.only(top: 30.0),
              child: Text(
                "tenemos exelentes resetas para que tu comida quede riquisimas",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),

            Container(
              height: 30.0,
              margin: EdgeInsets.only(top: 23.0),
              child: Text(
                "podra hacer comidas exquisitas",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ), //Titul //Titulo
            Container(
              height: 190.0,
              width: 190.0,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/sandwich.jpg")),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                    title: Text(
                      "hamburguesa",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.yellow,
                        fontFamily: 'Roboto',
                        fontSize: 25.0,
                      ),
                    ),
                    subtitle: Text(
                      "En esta seccion podras disfrutar de unos bocadillos de hamburguesa",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 19,
                      ),
                    ),
                    leading: Icon(Icons.home, color: Colors.yellow),
                  ),
                  RaisedButton(
                    onPressed: () => {Hamburgesa()},
                    color: Colors.yellow,
                    child: Text('ver reseta',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            Container(
              height: 160.0,
              width: 160.0,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/breakfast.jpg")),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                    title: Text(
                      "Aperitivos",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 19,
                      ),
                    ),
                    subtitle: Text(
                      "En esta seccion podras disfrutar de unos Aperitivos como pasteles etc",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 19,
                      ),
                    ),
                    leading: Icon(Icons.home, color: Colors.yellow),
                  ),
                  RaisedButton(
                    onPressed: () => {Aperitivos()},
                    color: Colors.red,
                    child: Text('ver reseta',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),

            GoogleButton(
                text: "Login with Gmail",
                onPressed: () {
                  blocUser.sIngin().then((UserCredential user) =>
                      print("Usted se ha autenticado como ${user.user}"));
                },
                heightC: 35,
                widthC: 80),

            FacebookButton(
                text: "Login with facebook",
                onPresseds: () {
                  blocUser.signInWithFacebook().then((value) => null);
                },
                heightC: 35,
                widthC: 80),

            Stack(
              children: [
                Container(
                  transformAlignment: Alignment.center,
                  width: 400.0,
                  height: 200.0,
                  child: Image(
                    image: AssetImage("assets/image/facebook.jpg"),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
