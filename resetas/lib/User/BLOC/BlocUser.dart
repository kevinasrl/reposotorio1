import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:resetas/User/repository/authRepository.dart';

class BlocUser implements Bloc {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSingin = GoogleSignIn();

  get authStatus => null;

  Future<UserCredential> sIngin() async {
    GoogleSignInAccount? googleSignInAccount = await googleSingin.signIn();
    GoogleSignInAuthentication gsA = await googleSignInAccount!.authentication;

    UserCredential user = await _auth.signInWithCredential(
        GoogleAuthProvider.credential(
            idToken: gsA.idToken, accessToken: gsA.accessToken));

    return user;
  }

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // Create a credential from the access token
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }
    return null;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
