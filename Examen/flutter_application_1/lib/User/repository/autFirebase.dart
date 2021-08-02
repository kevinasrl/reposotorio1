// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AutFirebase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSingin = GoogleSignIn();

  Future<UserCredential> sIngin() async {
    GoogleSignInAccount? googleSignInAccount = await googleSingin.signIn();
    GoogleSignInAuthentication gsA = await googleSignInAccount!.authentication;

    UserCredential user = await _auth.signInWithCredential(
        GoogleAuthProvider.credential(
            idToken: gsA.idToken, accessToken: gsA.accessToken));

    return user;
  }
}
