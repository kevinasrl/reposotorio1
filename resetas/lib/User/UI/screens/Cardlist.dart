import 'package:flutter/material.dart';

import 'cardimg.dart';

class Cardlist extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 25.0,
          ),
          height: 400.0,
          child: ListView(
            padding: EdgeInsets.all(15.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MyArticles("assets/image/chicasojosazules.jpg", "carolina mejia",
                  "NewYork,22", "profesora 📍😍 😍 😍 😍 😍 😍 "),
              MyArticles("assets/image/cristina.jpg", "cristina aguilera",
                  "florida 27", "doctora  📍😍 😍 😍 😍 "),
              MyArticles("assets/image/screen-0.jpg", "mikael orlando",
                  "los angeles,29 ", "Arquitecto  😍 😍 😍 😍 "),
            ],
          ),
        ),
      ],
    );
  }
}
