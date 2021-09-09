// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:resetas/User/BLOC/blocUser.dart';

class AutRepository {
  final _blocUser = BlocUser();

  Future<UserCredential> singInFirebase() => _blocUser.sIngin();
}
