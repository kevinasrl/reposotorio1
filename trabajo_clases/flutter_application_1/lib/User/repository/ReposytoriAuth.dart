import 'package:firebase_auth/firebase_auth.dart';
import 'Firebaseauth.dart';

class AutRepository {
  final _autFirebase = AutFirebase();

  Future<UserCredential> singInFirebase() => _autFirebase.sIngin();
}
