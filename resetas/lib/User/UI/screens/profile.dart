import 'package:flutter/material.dart';
import 'package:resetas/User/UI/widget/textimput.dart';

class Profile extends StatelessWidget {
  final _controllerName = TextEditingController();
  final _controllerHobbie = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 250.0,
              width: 250.0,
              margin: EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/sandwich.jpg")),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 15.0),
              child: Text("Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0)),
            ),
            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 20.0),
              child: TextInput(
                  hintText: "Name",
                  inputType: TextInputType.name,
                  controller: _controllerName,
                  maxline: 1),
            ),
            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 20.0),
              child: TextInput(
                  hintText: "comida",
                  inputType: TextInputType.multiline,
                  controller: _controllerHobbie,
                  maxline: 6),
            ),
            Container(
              height: 40.0,
              margin: EdgeInsets.only(top: 20.0),
              child: Center(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.lightBlue,
                  child: Text("save", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
