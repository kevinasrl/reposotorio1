import 'package:flutter/material.dart';
import 'package:resetas/User/UI/screens/profile.dart';
import 'package:resetas/User/UI/widget/textimput.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:resetas/User/UI/widget/googleButton.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:resetas/User/BLOC/blocUser.dart';

// ignore: must_be_immutable
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
                "NOMBRE APLICACION",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ), //Titulo

            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: TextInput(
                    hintText: "Username",
                    inputType: TextInputType.name,
                    controller: _controllerUsername,
                    maxline: 1)), //username

            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: TextInput(
                    hintText: "Password",
                    inputType: TextInputType.text,
                    controller: _controllerHobbie)), //Password

            Container(
              child: Center(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.lightBlue,
                  child: Text('Summit', style: TextStyle(color: Colors.black)),
                ),
              ),
            ),

            GoogleButton(
                text: "Login with Gmail",
                onPressed: () {
                  blocUser.singIn().then((UserCredential user) =>
                      print("Usted se ha autenticado como ${user.user}"));
                },
                heightC: 35,
                widthC: 80),

            GoogleButton(
                text: "Login out",
                onPressed: () {
                  //blocUser.singIn().then((UserCredential user)=> print("Usted se ha autenticado como ${user.user}"));
                },
                heightC: 35,
                widthC: 80)

            /*Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 20.0),
              child: Center(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.lightBlue,
                  child: Text("summit", style: TextStyle(color: Colors.white)),
                ),
              ),
            
            GoogleButton(
                text: "login with  gmail",
                onPressed: () {
                  blocUser.singIn().then((UserCredential user) =>
                      print("Usted se a autenticado como ${user.user}"));
                },
                widthC: 30,
                heightC: 20)
                */
          ],
        ),
      ),
    );
  }
}
