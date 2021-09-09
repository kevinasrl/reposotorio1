import 'package:flutter/material.dart';
import 'package:resetas/User/BLOC/blocUser.dart';
import 'package:resetas/User/UI/screens/login.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:resetas/User/UI/screens/hamburguesas.dart';
import 'package:resetas/User/UI/screens/Aperitivos.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Colors.black;
    return BlocProvider(
      bloc: BlocUser(),
      child: MaterialApp(
        home: Login(),
      ),
    );
  }
}
